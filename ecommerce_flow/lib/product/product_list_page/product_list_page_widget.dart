import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/cart/cart_counter/cart_counter_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/product/category/category_avatar/category_avatar_widget.dart';
import '/product/product_list_card/product_list_card_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_list_page_model.dart';
export 'product_list_page_model.dart';

class ProductListPageWidget extends StatefulWidget {
  /// This page is where users land after signing it. It has search, all the
  /// categories, top selling products and more.
  const ProductListPageWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<ProductListPageWidget> createState() => _ProductListPageWidgetState();
}

class _ProductListPageWidgetState extends State<ProductListPageWidget>
    with RouteAware {
  late ProductListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductListPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.searchString = '';
      setState(() {});
      setDarkModeSetting(context, ThemeMode.light);
    });

    _model.searchQueryTextController ??= TextEditingController()
      ..addListener(() {
        debugLogWidgetClass(_model.rootModel);
      });
    _model.searchQueryFocusNode ??= FocusNode();
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
    _model.categoryAvatarModels.clear();
    _model.topSellingProductCardModels.clear();
    _model.newInProductCardModels.clear();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 80.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: 45.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwcm9maWxlfGVufDB8fHx8MTcxMzc4NTIzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
                            ).image,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: ['Men', 'Women', 'Kids'],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue = val),
                      width: 120.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Roboto',
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Men',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      elevation: 2.0,
                      borderColor: Colors.transparent,
                      borderWidth: 2.0,
                      borderRadius: 24.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('CartPage');
                        },
                        child: wrapWithModel(
                          model: _model.cartCounterModel,
                          updateCallback: () => setState(() {}),
                          child: CartCounterWidget(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    0,
                    0,
                    30.0,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    AlignedTooltip(
                      content: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          'Search products',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: Duration(milliseconds: 100),
                      showDuration: Duration(milliseconds: 1500),
                      triggerMode: TooltipTriggerMode.longPress,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: TextFormField(
                          controller: _model.searchQueryTextController,
                          focusNode: _model.searchQueryFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.searchQueryTextController',
                            Duration(milliseconds: 2000),
                            () async {
                              await actions.executeSearch(
                                _model.searchString!,
                              );
                            },
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Search',
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            prefixIcon: Icon(
                              Icons.search_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 18.0,
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                          validator: _model.searchQueryTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    FutureBuilder<ApiCallResponse>(
                      future: GetCategoryListCall.call(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final categoriesGetCategoryListResponse =
                            snapshot.data!;
                        _model.debugBackendQueries[
                                'GetCategoryListCall_statusCode_Container_nmi03vbp'] =
                            debugSerializeParam(
                          categoriesGetCategoryListResponse.statusCode,
                          ParamType.int,
                          link:
                              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
                          name: 'int',
                          nullable: false,
                        );
                        _model.debugBackendQueries[
                                'GetCategoryListCall_responseBody_Container_nmi03vbp'] =
                            debugSerializeParam(
                          categoriesGetCategoryListResponse.bodyText,
                          ParamType.String,
                          link:
                              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
                          name: 'String',
                          nullable: false,
                        );
                        debugLogWidgetClass(_model);

                        return Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Categories',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('CategoryListPage');
                                        },
                                        child: Text(
                                          'See All',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 130.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final categoryAvatarList =
                                            (categoriesGetCategoryListResponse
                                                            .jsonBody
                                                            .toList()
                                                            .map<CategoryStruct?>(
                                                                CategoryStruct
                                                                    .maybeFromMap)
                                                            .toList()
                                                        as Iterable<
                                                            CategoryStruct?>)
                                                    .withoutNulls
                                                    ?.toList() ??
                                                [];
                                        _model.debugGeneratorVariables[
                                                'categoryAvatarList${categoryAvatarList.length > 100 ? ' (first 100)' : ''}'] =
                                            debugSerializeParam(
                                          categoryAvatarList.take(100),
                                          ParamType.DataStruct,
                                          isList: true,
                                          link:
                                              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
                                          name: 'Category',
                                          nullable: false,
                                        );
                                        debugLogWidgetClass(_model);

                                        return ListView.separated(
                                          padding: EdgeInsets.fromLTRB(
                                            16.0,
                                            0,
                                            16.0,
                                            0,
                                          ),
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: categoryAvatarList.length,
                                          separatorBuilder: (_, __) =>
                                              SizedBox(width: 12.0),
                                          itemBuilder: (context,
                                              categoryAvatarListIndex) {
                                            final categoryAvatarListItem =
                                                categoryAvatarList[
                                                    categoryAvatarListIndex];
                                            return CategoryAvatarWidget(
                                              key: Key(
                                                  'Key6th_${categoryAvatarListIndex}_of_${categoryAvatarList.length}'),
                                              category: categoryAvatarListItem,
                                              addModelFn: (m) {
                                                m.parentModel = _model;
                                                _model.categoryAvatarModels[
                                                    'Key6th_${categoryAvatarListIndex}_of_${categoryAvatarList.length}'] = m;
                                              },
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: ProductGroup.getProductListCall.call(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: SpinKitCircle(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 40.0,
                                ),
                              ),
                            );
                          }
                          final topSellingSectionGetProductListResponse =
                              snapshot.data!;
                          _model.debugBackendQueries[
                                  'ProductGroup.getProductListCall_statusCode_Container_yx6q1kws'] =
                              debugSerializeParam(
                            topSellingSectionGetProductListResponse.statusCode,
                            ParamType.int,
                            link:
                                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
                            name: 'int',
                            nullable: false,
                          );
                          _model.debugBackendQueries[
                                  'ProductGroup.getProductListCall_responseBody_Container_yx6q1kws'] =
                              debugSerializeParam(
                            topSellingSectionGetProductListResponse.bodyText,
                            ParamType.String,
                            link:
                                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
                            name: 'String',
                            nullable: false,
                          );
                          debugLogWidgetClass(_model);

                          return Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Top Selling',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        'See All',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 280.0,
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final xanoProductsList =
                                          (topSellingSectionGetProductListResponse
                                                          .jsonBody
                                                          .toList()
                                                          .map<ProductStruct?>(
                                                              ProductStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          ProductStruct?>)
                                                  .withoutNulls
                                                  ?.toList() ??
                                              [];
                                      _model.debugGeneratorVariables[
                                              'xanoProductsList${xanoProductsList.length > 100 ? ' (first 100)' : ''}'] =
                                          debugSerializeParam(
                                        xanoProductsList.take(100),
                                        ParamType.DataStruct,
                                        isList: true,
                                        link:
                                            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
                                        name: 'Product',
                                        nullable: false,
                                      );
                                      debugLogWidgetClass(_model);

                                      return ListView.separated(
                                        padding: EdgeInsets.fromLTRB(
                                          16.0,
                                          0,
                                          16.0,
                                          0,
                                        ),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: xanoProductsList.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(width: 12.0),
                                        itemBuilder:
                                            (context, xanoProductsListIndex) {
                                          final xanoProductsListItem =
                                              xanoProductsList[
                                                  xanoProductsListIndex];
                                          return Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      2.0, 16.0, 0.0, 16.0),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: ProductListCardWidget(
                                                  key: Key(
                                                      'Key472_${xanoProductsListIndex}_of_${xanoProductsList.length}'),
                                                  productItem: (topSellingSectionGetProductListResponse
                                                              .jsonBody
                                                              .toList()
                                                              .map<ProductStruct?>(
                                                                  ProductStruct
                                                                      .maybeFromMap)
                                                              .toList()
                                                          as Iterable<
                                                              ProductStruct?>)
                                                      .withoutNulls?[xanoProductsListIndex],
                                                  addModelFn: (m) {
                                                    m.parentModel = _model;
                                                    _model.topSellingProductCardModels[
                                                        'Key472_${xanoProductsListIndex}_of_${xanoProductsList.length}'] = m;
                                                  },
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    FutureBuilder<ApiCallResponse>(
                      future: ProductGroup.getProductListCall.call(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final newInSectionGetProductListResponse =
                            snapshot.data!;
                        _model.debugBackendQueries[
                                'ProductGroup.getProductListCall_statusCode_Container_cgpd2btt'] =
                            debugSerializeParam(
                          newInSectionGetProductListResponse.statusCode,
                          ParamType.int,
                          link:
                              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
                          name: 'int',
                          nullable: false,
                        );
                        _model.debugBackendQueries[
                                'ProductGroup.getProductListCall_responseBody_Container_cgpd2btt'] =
                            debugSerializeParam(
                          newInSectionGetProductListResponse.bodyText,
                          ParamType.String,
                          link:
                              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
                          name: 'String',
                          nullable: false,
                        );
                        debugLogWidgetClass(_model);

                        return Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'New In',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      'See All',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 289.0,
                                decoration: BoxDecoration(),
                                child: Builder(
                                  builder: (context) {
                                    final xanoProductListNew =
                                        (newInSectionGetProductListResponse
                                                        .jsonBody
                                                        .toList()
                                                        .map<ProductStruct?>(
                                                            ProductStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<ProductStruct?>)
                                                .withoutNulls
                                                ?.toList() ??
                                            [];
                                    _model.debugGeneratorVariables[
                                            'xanoProductListNew${xanoProductListNew.length > 100 ? ' (first 100)' : ''}'] =
                                        debugSerializeParam(
                                      xanoProductListNew.take(100),
                                      ParamType.DataStruct,
                                      isList: true,
                                      link:
                                          'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
                                      name: 'Product',
                                      nullable: false,
                                    );
                                    debugLogWidgetClass(_model);

                                    return ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                        16.0,
                                        0,
                                        16.0,
                                        0,
                                      ),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: xanoProductListNew.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(width: 12.0),
                                      itemBuilder:
                                          (context, xanoProductListNewIndex) {
                                        final xanoProductListNewItem =
                                            xanoProductListNew[
                                                xanoProductListNewIndex];
                                        return Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 16.0, 0.0, 16.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.5,
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 12.0, 0.0),
                                                child: ProductListCardWidget(
                                                  key: Key(
                                                      'Keyf1c_${xanoProductListNewIndex}_of_${xanoProductListNew.length}'),
                                                  productItem:
                                                      xanoProductListNewItem,
                                                  addModelFn: (m) {
                                                    m.parentModel = _model;
                                                    _model.newInProductCardModels[
                                                        'Keyf1c_${xanoProductListNewIndex}_of_${xanoProductListNew.length}'] = m;
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
