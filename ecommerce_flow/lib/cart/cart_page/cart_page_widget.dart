import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/cart/cart_products_component/cart_products_component_widget.dart';
import '/cart/empty_cart_widget/empty_cart_widget_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cart_page_model.dart';
export 'cart_page_model.dart';

class CartPageWidget extends StatefulWidget {
  const CartPageWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<CartPageWidget> createState() => _CartPageWidgetState();
}

class _CartPageWidgetState extends State<CartPageWidget> with RouteAware {
  late CartPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isCartEmpty = currentUserDocument?.cartReference == null;
      setState(() {});
    });
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
          backgroundColor: FlutterFlowTheme.of(context).info,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.keyboard_arrow_left_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Cart',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Rubik',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              if (!_model.isCartEmpty) {
                return AuthUserStreamWidget(
                  builder: (context) => StreamBuilder<CartsRecord>(
                    stream: CartsRecord.getDocument(
                        currentUserDocument!.cartReference!),
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

                      final cartProductsComponentCartsRecord = snapshot.data!;
                      _model.debugBackendQueries[
                              'cartProductsComponentCartsRecord_Container_etrznesd'] =
                          debugSerializeParam(
                        cartProductsComponentCartsRecord,
                        ParamType.Document,
                        link:
                            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CartPage',
                        name: 'carts',
                        nullable: false,
                      );
                      debugLogWidgetClass(_model);

                      return wrapWithModel(
                        model: _model.cartProductsComponentModel,
                        updateCallback: () => setState(() {}),
                        child: CartProductsComponentWidget(
                          cart: cartProductsComponentCartsRecord,
                          updateCartStatus: (cartEmptyStatus) async {
                            _model.isCartEmpty = cartEmptyStatus;
                            setState(() {});
                          },
                        ),
                      );
                    },
                  ),
                );
              } else {
                return wrapWithModel(
                  model: _model.emptyCartWidgetModel,
                  updateCallback: () => setState(() {}),
                  child: EmptyCartWidgetWidget(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
