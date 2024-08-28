import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/product/category/category_list_item/category_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_list_page_model.dart';
export 'category_list_page_model.dart';

class CategoryListPageWidget extends StatefulWidget {
  const CategoryListPageWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<CategoryListPageWidget> createState() => _CategoryListPageWidgetState();
}

class _CategoryListPageWidgetState extends State<CategoryListPageWidget>
    with RouteAware {
  late CategoryListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryListPageModel());
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
    _model.categoryListItemModels.clear();

    return FutureBuilder<ApiCallResponse>(
      future: GetCategoryListCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).info,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final categoryListPageGetCategoryListResponse = snapshot.data!;
        _model.debugBackendQueries[
                'GetCategoryListCall_statusCode_Scaffold_fwfsf9ii'] =
            debugSerializeParam(
          categoryListPageGetCategoryListResponse.statusCode,
          ParamType.int,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CategoryListPage',
          name: 'int',
          nullable: false,
        );
        _model.debugBackendQueries[
                'GetCategoryListCall_responseBody_Scaffold_fwfsf9ii'] =
            debugSerializeParam(
          categoryListPageGetCategoryListResponse.bodyText,
          ParamType.String,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CategoryListPage',
          name: 'String',
          nullable: false,
        );
        debugLogWidgetClass(_model);

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).info,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).info,
              iconTheme: IconThemeData(
                  color: FlutterFlowTheme.of(context).primaryText),
              automaticallyImplyLeading: true,
              leading: Padding(
                padding: EdgeInsets.all(10.0),
                child: FlutterFlowIconButton(
                  borderRadius: 40.0,
                  borderWidth: 1.0,
                  buttonSize: 20.0,
                  fillColor: FlutterFlowTheme.of(context).alternate,
                  icon: Icon(
                    Icons.chevron_left_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 20.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shop By Categories',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        Builder(
                          builder: (context) {
                            final categoryList =
                                (categoryListPageGetCategoryListResponse
                                                .jsonBody
                                                .toList()
                                                .map<CategoryStruct?>(
                                                    CategoryStruct.maybeFromMap)
                                                .toList()
                                            as Iterable<CategoryStruct?>)
                                        .withoutNulls
                                        ?.toList() ??
                                    [];
                            _model.debugGeneratorVariables[
                                    'categoryList${categoryList.length > 100 ? ' (first 100)' : ''}'] =
                                debugSerializeParam(
                              categoryList.take(100),
                              ParamType.DataStruct,
                              isList: true,
                              link:
                                  'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CategoryListPage',
                              name: 'Category',
                              nullable: false,
                            );
                            debugLogWidgetClass(_model);

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: categoryList.length,
                              itemBuilder: (context, categoryListIndex) {
                                final categoryListItem =
                                    categoryList[categoryListIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 18.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'CategoryProductListPage',
                                        queryParameters: {
                                          'category': serializeParam(
                                            categoryListItem,
                                            ParamType.DataStruct,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: CategoryListItemWidget(
                                      key: Key(
                                          'Keyav3_${categoryListIndex}_of_${categoryList.length}'),
                                      category: categoryListItem,
                                      addModelFn: (m) {
                                        m.parentModel = _model;
                                        _model.categoryListItemModels[
                                            'Keyav3_${categoryListIndex}_of_${categoryList.length}'] = m;
                                      },
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
