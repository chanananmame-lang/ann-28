import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/cart/cart_item/cart_item_widget.dart';
import '/cart/price_summary/price_summary_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cart_products_component_model.dart';
export 'cart_products_component_model.dart';

class CartProductsComponentWidget extends StatefulWidget {
  const CartProductsComponentWidget({
    super.key,
    this.addModelFn,
    required this.cart,
    required this.updateCartStatus,
  });

  final CartsRecord? cart;
  final Future Function(bool cartEmptyStatus)? updateCartStatus;
  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<CartProductsComponentWidget> createState() =>
      _CartProductsComponentWidgetState();
}

class _CartProductsComponentWidgetState
    extends State<CartProductsComponentWidget> with RouteAware {
  late CartProductsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartProductsComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.updateTotalCost(context);
      setState(() {});
    });

    _model.textController ??= TextEditingController()
      ..addListener(() {
        debugLogWidgetClass(_model.rootModel);
      });
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.addModelFn?.call(_model);
    _model.cartItemModels.clear();

    return Container(
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 6.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await widget.updateCartStatus?.call(
                          true,
                        );

                        await currentUserReference!.update({
                          ...mapToFirestore(
                            {
                              'cart_reference': FieldValue.delete(),
                            },
                          ),
                        });
                        FFAppState().cartItems = [];
                        setState(() {});
                        await widget!.cart!.reference.delete();
                      },
                      child: Text(
                        'Remove All ',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Roboto',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
                Builder(
                  builder: (context) {
                    final cartItems = widget!.cart?.cart?.items?.toList() ?? [];
                    _model.debugGeneratorVariables[
                            'cartItems${cartItems.length > 100 ? ' (first 100)' : ''}'] =
                        debugSerializeParam(
                      cartItems.take(100),
                      ParamType.DataStruct,
                      isList: true,
                      link:
                          'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CartProductsComponent',
                      name: 'items',
                      nullable: false,
                    );
                    debugLogWidgetClass(_model);

                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children:
                          List.generate(cartItems.length, (cartItemsIndex) {
                        final cartItemsItem = cartItems[cartItemsIndex];
                        return CartItemWidget(
                          key: Key(
                              'Keyrdy_${cartItemsIndex}_of_${cartItems.length}'),
                          item: cartItemsItem,
                          addModelFn: (m) {
                            m.parentModel = _model;
                            _model.cartItemModels[
                                'Keyrdy_${cartItemsIndex}_of_${cartItems.length}'] = m;
                          },
                        );
                      }),
                    );
                  },
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    wrapWithModel(
                      model: _model.priceSummaryModel,
                      updateCallback: () => setState(() {}),
                      child: PriceSummaryWidget(
                        cartItems: widget!.cart!.cart.items,
                        appliedCoupon: _model.appliedCoupon,
                        totalCost: _model.totalAmount,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.percent,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 20.0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Enter Coupon Code',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.couponQuery =
                                        await queryCouponsRecordOnce(
                                      queryBuilder: (couponsRecord) =>
                                          couponsRecord.where(
                                        'code',
                                        isEqualTo: _model.textController.text,
                                      ),
                                      singleRecord: true,
                                    ).then((s) => s.firstOrNull);
                                    if (_model.couponQuery?.reference != null) {
                                      _model.appliedCoupon = _model.couponQuery;
                                      setState(() {});
                                      await _model.updateTotalCost(context);
                                      setState(() {});
                                    }

                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
            child: FFButtonWidget(
              onPressed: () async {
                _model.serializedCartItems = await actions.serializeCartItems(
                  widget!.cart!.cart.items.toList(),
                );
                _model.createOrderApiResultpx8 =
                    await ProductGroup.createOrderCall.call(
                  orderDate: dateTimeFormat("yyyy-MM-dd", getCurrentTimestamp),
                  userId: currentUserReference?.id,
                  productItemsJson: _model.serializedCartItems,
                  totalAmount: _model.totalAmount,
                );

                if ((_model.createOrderApiResultpx8?.succeeded ?? true)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Order created!',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                    ),
                  );
                  FFAppState().cartItems = [];
                  setState(() {});

                  context.pushNamed('OrderListPage');

                  await currentUserReference!.update({
                    ...mapToFirestore(
                      {
                        'cart_reference': FieldValue.delete(),
                      },
                    ),
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Order failed!',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                    ),
                  );
                }

                setState(() {});
              },
              text: 'Checkout',
              options: FFButtonOptions(
                width: double.infinity,
                height: 50.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
