import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/product/product_list_card/product_list_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_product_list_page_model.dart';
export 'category_product_list_page_model.dart';

class CategoryProductListPageWidget extends StatefulWidget {
  const CategoryProductListPageWidget({
    super.key,
    this.addModelFn,
    required this.category,
  });

  final CategoryStruct? category;
  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<CategoryProductListPageWidget> createState() =>
      _CategoryProductListPageWidgetState();
}

class _CategoryProductListPageWidgetState
    extends State<CategoryProductListPageWidget> with RouteAware {
  late CategoryProductListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryProductListPageModel());
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
    _model.categoryProductCardModels.clear();

    return FutureBuilder<ApiCallResponse>(
      future: ProductGroup.getCategoryProductListCall.call(
        categoryName: widget!.category?.categoryName,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
        final categoryProductListPageGetCategoryProductListResponse =
            snapshot.data!;
        _model.debugBackendQueries[
                'ProductGroup.getCategoryProductListCall_statusCode_Scaffold_o5n1oog5'] =
            debugSerializeParam(
          categoryProductListPageGetCategoryProductListResponse.statusCode,
          ParamType.int,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CategoryProductListPage',
          name: 'int',
          nullable: false,
        );
        _model.debugBackendQueries[
                'ProductGroup.getCategoryProductListCall_responseBody_Scaffold_o5n1oog5'] =
            debugSerializeParam(
          categoryProductListPageGetCategoryProductListResponse.bodyText,
          ParamType.String,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CategoryProductListPage',
          name: 'String',
          nullable: false,
        );
        debugLogWidgetClass(_model);

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              iconTheme: IconThemeData(
                  color: FlutterFlowTheme.of(context).primaryText),
              automaticallyImplyLeading: true,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 18.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget!.category?.categoryName} (${(categoryProductListPageGetCategoryProductListResponse.jsonBody.toList().map<ProductStruct?>(ProductStruct.maybeFromMap).toList() as Iterable<ProductStruct?>).withoutNulls?.length?.toString()})',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          final categoryCardList =
                              (categoryProductListPageGetCategoryProductListResponse
                                          .jsonBody
                                          .toList()
                                          .map<ProductStruct?>(
                                              ProductStruct.maybeFromMap)
                                          .toList() as Iterable<ProductStruct?>)
                                      .withoutNulls
                                      ?.toList() ??
                                  [];
                          _model.debugGeneratorVariables[
                                  'categoryCardList${categoryCardList.length > 100 ? ' (first 100)' : ''}'] =
                              debugSerializeParam(
                            categoryCardList.take(100),
                            ParamType.DataStruct,
                            isList: true,
                            link:
                                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CategoryProductListPage',
                            name: 'Product',
                            nullable: false,
                          );
                          debugLogWidgetClass(_model);

                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 0.7,
                            ),
                            scrollDirection: Axis.vertical,
                            itemCount: categoryCardList.length,
                            itemBuilder: (context, categoryCardListIndex) {
                              final categoryCardListItem =
                                  categoryCardList[categoryCardListIndex];
                              return ProductListCardWidget(
                                key: Key(
                                    'Keyeto_${categoryCardListIndex}_of_${categoryCardList.length}'),
                                productItem: categoryCardListItem,
                                addModelFn: (m) {
                                  m.parentModel = _model;
                                  _model.categoryProductCardModels[
                                      'Keyeto_${categoryCardListIndex}_of_${categoryCardList.length}'] = m;
                                },
                              );
                            },
                          );
                        },
                      ),
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
