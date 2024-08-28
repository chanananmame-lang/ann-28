import '/components/square_leading_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile/address_list_item/address_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'address_list_page_model.dart';
export 'address_list_page_model.dart';

class AddressListPageWidget extends StatefulWidget {
  const AddressListPageWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<AddressListPageWidget> createState() => _AddressListPageWidgetState();
}

class _AddressListPageWidgetState extends State<AddressListPageWidget>
    with RouteAware {
  late AddressListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressListPageModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: wrapWithModel(
            model: _model.squareLeadingModel,
            updateCallback: () => setState(() {}),
            child: SquareLeadingWidget(
              onTap: () async {
                context.safePop();
              },
            ),
          ),
          title: Text(
            'Addresses',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Roboto',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            Icon(
              Icons.more_vert,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(14.0),
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0x196D5FED),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 12.0, 0.0),
                        child: Icon(
                          Icons.add_rounded,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        'Add New Address',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).tertiary,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(14.0, 14.0, 14.0, 14.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('AddressEditPage');
                        },
                        child: wrapWithModel(
                          model: _model.addressListItemModel,
                          updateCallback: () => setState(() {}),
                          updateOnChange: true,
                          child: AddressListItemWidget(
                            isSelected: false,
                          ),
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
