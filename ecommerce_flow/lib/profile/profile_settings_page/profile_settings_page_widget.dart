import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile/profile_list_item/profile_list_item_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_settings_page_model.dart';
export 'profile_settings_page_model.dart';

class ProfileSettingsPageWidget extends StatefulWidget {
  const ProfileSettingsPageWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<ProfileSettingsPageWidget> createState() =>
      _ProfileSettingsPageWidgetState();
}

class _ProfileSettingsPageWidgetState extends State<ProfileSettingsPageWidget>
    with RouteAware {
  late ProfileSettingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSettingsPageModel());

    _model.textController ??= TextEditingController(text: _model.profileName)
      ..addListener(() {
        debugLogWidgetClass(_model.rootModel);
      });
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, DebugModalRoute.of(context)!);
    debugLogGlobalProperty(context);
  }

  @override
  void didPopNext() {
    if (mounted) {
      setState(() => _model.isRouteVisible = true);
    }
    debugLogWidgetClass(_model);
  }

  @override
  void didPush() {
    if (mounted) {
      setState(() => _model.isRouteVisible = true);
    }
    debugLogWidgetClass(_model);
  }

  @override
  void didPop() {
    _model.isRouteVisible = false;
  }

  @override
  void didPushNext() {
    _model.isRouteVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    widget.addModelFn?.call(_model);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).tertiary,
          icon: Icon(
            Icons.person_2,
            size: 20.0,
          ),
          elevation: 12.0,
          label: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Invite Friend',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Rubik',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Profile',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Rubik',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            Builder(
              builder: (context) {
                if (!_model.isEditMode) {
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.edit,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        _model.isEditMode = !_model.isEditMode;
                        setState(() {});
                      },
                    ),
                  );
                } else {
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.check_rounded,
                        color: FlutterFlowTheme.of(context).success,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        _model.isEditMode = !_model.isEditMode;
                        _model.profileName = _model.textController.text;
                        setState(() {});
                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Profile name updated!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor: Color(0xFFDAD8FF),
                          ),
                        );
                      },
                    ),
                  );
                }
              },
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 90.0,
                        height: 90.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent3,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).tertiary,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: CachedNetworkImage(
                              fadeInDuration: Duration(milliseconds: 500),
                              fadeOutDuration: Duration(milliseconds: 500),
                              imageUrl:
                                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwcm9maWxlfGVufDB8fHx8MTcxMzc4NTIzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
                              width: 158.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (context) {
                                if (!_model.isEditMode) {
                                  return Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: Text(
                                        _model.profileName,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Rubik',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Rubik',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  );
                                }
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: Text(
                                'joy@augustin.com',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      wrapWithModel(
                        model: _model.profileListItemModel1,
                        updateCallback: () => setState(() {}),
                        child: ProfileListItemWidget(
                          leadingIcon: Icon(
                            Icons.map_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                          title: 'Address',
                          onTap: () async {
                            context.pushNamed('AddressListPage');
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.profileListItemModel2,
                        updateCallback: () => setState(() {}),
                        child: ProfileListItemWidget(
                          leadingIcon: Icon(
                            Icons.help_outline_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                          title: 'Help',
                          onTap: () async {
                            context.pushNamed('AddressEditPage');
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.profileListItemModel3,
                        updateCallback: () => setState(() {}),
                        child: ProfileListItemWidget(
                          leadingIcon: Icon(
                            Icons.support_agent_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                          title: 'Support',
                          onTap: () async {
                            context.pushNamed('AddressEditPage');
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.profileListItemModel4,
                        updateCallback: () => setState(() {}),
                        child: ProfileListItemWidget(
                          leadingIcon: Icon(
                            Icons.monetization_on_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                          title: 'Expenses Overview',
                          onTap: () async {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
