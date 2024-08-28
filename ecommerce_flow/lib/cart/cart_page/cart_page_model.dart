import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/cart/cart_products_component/cart_products_component_widget.dart';
import '/cart/empty_cart_widget/empty_cart_widget_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cart_page_widget.dart' show CartPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPageModel extends FlutterFlowModel<CartPageWidget> {
  ///  Local state fields for this page.

  bool _isCartEmpty = true;
  set isCartEmpty(bool value) {
    _isCartEmpty = value;
    debugLogWidgetClass(rootModel);
  }

  bool get isCartEmpty => _isCartEmpty;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CartProductsComponent component.
  late CartProductsComponentModel cartProductsComponentModel;
  // Model for EmptyCartWidget component.
  late EmptyCartWidgetModel emptyCartWidgetModel;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    cartProductsComponentModel = createModel(
        context, () => CartProductsComponentModel()..parentModel = this);
    emptyCartWidgetModel =
        createModel(context, () => EmptyCartWidgetModel()..parentModel = this);

    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {
    cartProductsComponentModel.dispose();
    emptyCartWidgetModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'isCartEmpty': debugSerializeParam(
            isCartEmpty,
            ParamType.bool,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CartPage',
            searchReference:
                'reference=QiUKFAoLaXNDYXJ0RW1wdHkSBXF6aHdlKgcSBWZhbHNlcgQIBSABUAFaC2lzQ2FydEVtcHR5YghDYXJ0UGFnZQ==',
            name: 'bool',
            nullable: false,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'cartProductsComponentModel (CartProductsComponent)':
              cartProductsComponentModel?.toWidgetClassDebugData(),
          'emptyCartWidgetModel (EmptyCartWidget)':
              emptyCartWidgetModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=CartPage',
        searchReference: 'reference=OghDYXJ0UGFnZVABWghDYXJ0UGFnZQ==',
        widgetClassName: 'CartPage',
      );
}
