import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/cart/cart_counter/cart_counter_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/product/detail_page/add_to_bag_button/add_to_bag_button_widget.dart';
import '/product/detail_page/product_option_copy/product_option_copy_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_detail_page_model.dart';
export 'product_detail_page_model.dart';

class ProductDetailPageWidget extends StatefulWidget {
  const ProductDetailPageWidget({
    super.key,
    this.addModelFn,
    required this.productId,
  });

  final int? productId;
  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<ProductDetailPageWidget> createState() =>
      _ProductDetailPageWidgetState();
}

class _ProductDetailPageWidgetState extends State<ProductDetailPageWidget>
    with RouteAware {
  late ProductDetailPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetailPageModel());
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
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: ProductGroup.getSingleProductCall.call(
        productId: widget!.productId,
      ),
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
        final productDetailPageGetSingleProductResponse = snapshot.data!;
        _model.debugBackendQueries[
                'ProductGroup.getSingleProductCall_statusCode_Scaffold_djug3tfj'] =
            debugSerializeParam(
          productDetailPageGetSingleProductResponse.statusCode,
          ParamType.int,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductDetailPage',
          name: 'int',
          nullable: false,
        );
        _model.debugBackendQueries[
                'ProductGroup.getSingleProductCall_responseBody_Scaffold_djug3tfj'] =
            debugSerializeParam(
          productDetailPageGetSingleProductResponse.bodyText,
          ParamType.String,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductDetailPage',
          name: 'String',
          nullable: false,
        );
        debugLogWidgetClass(_model);

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).info,
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
                          padding: EdgeInsets.all(10.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 40.0,
                            borderWidth: 1.0,
                            buttonSize: 46.0,
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
                        wrapWithModel(
                          model: _model.cartCounterModel,
                          updateCallback: () => setState(() {}),
                          child: CartCounterWidget(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 300.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Builder(
                              builder: (context) {
                                final productImgList = ProductStruct.maybeFromMap(
                                            productDetailPageGetSingleProductResponse
                                                .jsonBody)
                                        ?.images
                                        ?.toList() ??
                                    [];
                                _model.debugGeneratorVariables[
                                        'productImgList${productImgList.length > 100 ? ' (first 100)' : ''}'] =
                                    debugSerializeParam(
                                  productImgList.take(100),
                                  ParamType.DataStruct,
                                  isList: true,
                                  link:
                                      'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductDetailPage',
                                  name: 'images',
                                  nullable: false,
                                );
                                debugLogWidgetClass(_model);

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: productImgList.length,
                                  itemBuilder: (context, productImgListIndex) {
                                    final productImgListItem =
                                        productImgList[productImgListIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 24.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          productImgListItem.large,
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 18.0, 0.0, 12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    ProductStruct.maybeFromMap(
                                            productDetailPageGetSingleProductResponse
                                                .jsonBody)
                                        ?.name,
                                    'Product',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  '${ProductStruct.maybeFromMap(productDetailPageGetSingleProductResponse.jsonBody)?.price?.currency}${ProductStruct.maybeFromMap(productDetailPageGetSingleProductResponse.jsonBody)?.price?.amount?.toString()}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    ProductStruct.maybeFromMap(
                                            productDetailPageGetSingleProductResponse
                                                .jsonBody)
                                        ?.description,
                                    'Description',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 24.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.productOptionCopyModel,
                                  updateCallback: () => setState(() {}),
                                  child: ProductOptionCopyWidget(
                                    maxQuantity: 10,
                                    sizeValues: ProductStruct.maybeFromMap(
                                            productDetailPageGetSingleProductResponse
                                                .jsonBody)
                                        ?.sizes,
                                    colorValues: ProductStruct.maybeFromMap(
                                            productDetailPageGetSingleProductResponse
                                                .jsonBody)
                                        ?.colors,
                                    onSizeSelected: (finalSize) async {
                                      _model.selectedSize = finalSize;
                                      setState(() {});
                                    },
                                    onColorSelected: (finalColor) async {
                                      _model.selectedColorHex = finalColor;
                                      setState(() {});
                                    },
                                    onQuantityChanged: (finalQuantity) async {
                                      _model.selectedQuantity = finalQuantity;
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Wishlist',
                                  icon: Icon(
                                    Icons.favorite_border_rounded,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.addToBagButtonModel,
                                  updateCallback: () => setState(() {}),
                                  child: AddToBagButtonWidget(
                                    isItemAddedToCart: _model.itemAddedToCart,
                                    onAddToBag: () async {
                                      if (_model.selectedSize != null &&
                                          _model.selectedSize != '') {
                                        if (functions
                                            .checkIfProductIdExistsInCart(
                                                FFAppState().cartItems.toList(),
                                                widget!.productId!
                                                    .toString())) {
                                          _model.productIndex = await actions
                                              .getIndexWhereProductIDExists(
                                            FFAppState().cartItems.toList(),
                                            widget!.productId!.toString(),
                                          );
                                          FFAppState().updateCartItemsAtIndex(
                                            _model.productIndex!,
                                            (e) => e
                                              ..incrementQuantity(
                                                  _model.selectedQuantity)
                                              ..incrementSubtotal(
                                                  ProductStruct.maybeFromMap(
                                                              productDetailPageGetSingleProductResponse
                                                                  .jsonBody)!
                                                          .price
                                                          .amount *
                                                      _model.selectedQuantity),
                                          );
                                          setState(() {});
                                        } else {
                                          FFAppState()
                                              .addToCartItems(ItemsStruct(
                                            productId:
                                                widget!.productId?.toString(),
                                            name: ProductStruct.maybeFromMap(
                                                    productDetailPageGetSingleProductResponse
                                                        .jsonBody)
                                                ?.name,
                                            quantity: _model.selectedQuantity,
                                            subtotal: ProductStruct.maybeFromMap(
                                                        productDetailPageGetSingleProductResponse
                                                            .jsonBody)!
                                                    .price
                                                    .amount *
                                                _model.selectedQuantity,
                                            brand: ProductStruct.maybeFromMap(
                                                    productDetailPageGetSingleProductResponse
                                                        .jsonBody)
                                                ?.brand,
                                            productImg: ProductStruct.maybeFromMap(
                                                    productDetailPageGetSingleProductResponse
                                                        .jsonBody)
                                                ?.images
                                                ?.first
                                                ?.thumbnail,
                                            color: ProductStruct.maybeFromMap(
                                                    productDetailPageGetSingleProductResponse
                                                        .jsonBody)
                                                ?.colors
                                                ?.first,
                                            size: _model.selectedSize,
                                            price: ProductStruct.maybeFromMap(
                                                    productDetailPageGetSingleProductResponse
                                                        .jsonBody)
                                                ?.price,
                                          ));
                                          setState(() {});
                                        }

                                        if (currentUserDocument
                                                    ?.cartReference?.id !=
                                                null &&
                                            currentUserDocument
                                                    ?.cartReference?.id !=
                                                '') {
                                          await currentUserDocument!
                                              .cartReference!
                                              .update(createCartsRecordData(
                                            cart: createCartStruct(
                                              fieldValues: {
                                                'items':
                                                    getItemsListFirestoreData(
                                                  FFAppState().cartItems,
                                                ),
                                              },
                                              clearUnsetFields: false,
                                            ),
                                          ));
                                          // Updated cart snackbar
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'updated doc ',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                        } else {
                                          // Create Carts document

                                          var cartsRecordReference =
                                              CartsRecord.collection.doc();
                                          await cartsRecordReference
                                              .set(createCartsRecordData(
                                            cart: createCartStruct(
                                              cartId: random_data.randomString(
                                                5,
                                                5,
                                                true,
                                                true,
                                                true,
                                              ),
                                              userId: currentUserReference,
                                              fieldValues: {
                                                'items': [
                                                  getItemsFirestoreData(
                                                    updateItemsStruct(
                                                      FFAppState()
                                                          .cartItems
                                                          .first,
                                                      clearUnsetFields: false,
                                                      create: true,
                                                    ),
                                                    true,
                                                  )
                                                ],
                                              },
                                              clearUnsetFields: false,
                                              create: true,
                                            ),
                                          ));
                                          _model.createCartResponse =
                                              CartsRecord.getDocumentFromData(
                                                  createCartsRecordData(
                                                    cart: createCartStruct(
                                                      cartId: random_data
                                                          .randomString(
                                                        5,
                                                        5,
                                                        true,
                                                        true,
                                                        true,
                                                      ),
                                                      userId:
                                                          currentUserReference,
                                                      fieldValues: {
                                                        'items': [
                                                          getItemsFirestoreData(
                                                            updateItemsStruct(
                                                              FFAppState()
                                                                  .cartItems
                                                                  .first,
                                                              clearUnsetFields:
                                                                  false,
                                                              create: true,
                                                            ),
                                                            true,
                                                          )
                                                        ],
                                                      },
                                                      clearUnsetFields: false,
                                                      create: true,
                                                    ),
                                                  ),
                                                  cartsRecordReference);
                                          // Created cart snackbar
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Created doc ${_model.createCartResponse?.reference.id}',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                          // Update users with cartid

                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            cartReference: _model
                                                .createCartResponse?.reference,
                                          ));
                                        }

                                        // itemAddedToCart to True
                                        _model.itemAddedToCart = true;
                                        setState(() {});
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Please select a size.',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      }

                                      setState(() {});
                                    },
                                    onGoToBag: () async {
                                      _model.itemAddedToCart = false;
                                      setState(() {});

                                      context.pushNamed('CartPage');
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shipping & Returns ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      ProductStruct.maybeFromMap(
                                              productDetailPageGetSingleProductResponse
                                                  .jsonBody)
                                          ?.returnPolicy,
                                      'return text',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Reviews',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 18.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      ProductStruct.maybeFromMap(
                                              productDetailPageGetSingleProductResponse
                                                  .jsonBody)
                                          ?.ratingAverage
                                          ?.toString(),
                                      '0.0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Roboto',
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 18.0, 0.0, 0.0),
                                  child: Text(
                                    '${ProductStruct.maybeFromMap(productDetailPageGetSingleProductResponse.jsonBody)?.totalReviews?.toString()} reviews',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 50.0,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxN3x8cHJvZmlsZXxlbnwwfHx8fDE3MTM3ODUyMzd8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                ).image,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Alex Morgan',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 50.0,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxN3x8cHJvZmlsZXxlbnwwfHx8fDE3MTM3ODUyMzd8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                ).image,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Alex Morgan',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 50.0,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNnx8cHJvZmlsZXxlbnwwfHx8fDE3MTM3ODUyMzd8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                ).image,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'John Doe',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
      },
    );
  }
}
