import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/cart/cart_item/cart_item_widget.dart';
import '/cart/price_summary/price_summary_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'cart_products_component_widget.dart' show CartProductsComponentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartProductsComponentModel
    extends FlutterFlowModel<CartProductsComponentWidget> {
  ///  Local state fields for this component.

  double _totalAmount = 0.0;
  set totalAmount(double value) {
    _totalAmount = value;
    debugLogWidgetClass(rootModel);
  }

  double get totalAmount => _totalAmount;

  CouponsRecord? _appliedCoupon;
  set appliedCoupon(CouponsRecord? value) {
    _appliedCoupon = value;
    debugLogWidgetClass(rootModel);
  }

  CouponsRecord? get appliedCoupon => _appliedCoupon;

  ///  State fields for stateful widgets in this component.

  // Models for CartItem dynamic component.
  Map<String, FlutterFlowModel> cartItemModels = {};
  // Model for PriceSummary component.
  late PriceSummaryModel priceSummaryModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  CouponsRecord? _couponQuery;
  set couponQuery(CouponsRecord? value) {
    _couponQuery = value;
    debugLogWidgetClass(rootModel);
  }

  CouponsRecord? get couponQuery => _couponQuery;

  // Stores action output result for [Custom Action - serializeCartItems] action in CheckoutButton widget.
  List<dynamic>? _serializedCartItems;
  set serializedCartItems(List<dynamic>? value) {
    _serializedCartItems = value;
    debugLogWidgetClass(rootModel);
  }

  List<dynamic>? get serializedCartItems => _serializedCartItems;

  // Stores action output result for [Backend Call - API (Create Order)] action in CheckoutButton widget.
  ApiCallResponse? _createOrderApiResultpx8;
  set createOrderApiResultpx8(ApiCallResponse? value) {
    _createOrderApiResultpx8 = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get createOrderApiResultpx8 => _createOrderApiResultpx8;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    priceSummaryModel =
        createModel(context, () => PriceSummaryModel()..parentModel = this);
  }

  @override
  void dispose() {
    priceSummaryModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks.
  Future updateTotalCost(BuildContext context) async {
    if (appliedCoupon != null) {
      // calculateTotalWithCoupon
      totalAmount = functions.calculateTotalWithCoupon(
          appliedCoupon, widget!.cart!.cart.items.toList());
    } else {
      // calculateTotal
      totalAmount = functions.calculateCartTotals(
          widget!.cart!.cart.items.toList(), CartPriceType.totalCost);
    }
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'cart': debugSerializeParam(
            widget?.cart,
            ParamType.Document,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CartProductsComponent',
            searchReference:
                'reference=SiEKDgoEY2FydBIGN28zc2Nscg8IByABKgkKBwoFY2FydHNQAFoEY2FydA==',
            name: 'carts',
            nullable: true,
          ),
          'updateCartStatus': debugSerializeParam(
            widget?.updateCartStatus,
            ParamType.Action,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CartProductsComponent',
            searchReference:
                'reference=SkUKGgoQdXBkYXRlQ2FydFN0YXR1cxIGZnR1Z3hhcicIFSABMiEKGQoPY2FydEVtcHR5U3RhdHVzEgZkamM3NWFyBAgFIAFQAFoQdXBkYXRlQ2FydFN0YXR1cw==',
            name: 'Future Function(bool cartEmptyStatus)',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'totalAmount': debugSerializeParam(
            totalAmount,
            ParamType.double,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CartProductsComponent',
            searchReference:
                'reference=QhwKFAoLdG90YWxBbW91bnQSBWwxd211cgQIAiABUABaC3RvdGFsQW1vdW50YhVDYXJ0UHJvZHVjdHNDb21wb25lbnQ=',
            name: 'double',
            nullable: false,
          ),
          'appliedCoupon': debugSerializeParam(
            appliedCoupon,
            ParamType.Document,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CartProductsComponent',
            searchReference:
                'reference=QikKFgoNYXBwbGllZENvdXBvbhIFejN6aWhyDwgHKgsKCQoHY291cG9uc1AAWg1hcHBsaWVkQ291cG9uYhVDYXJ0UHJvZHVjdHNDb21wb25lbnQ=',
            name: 'coupons',
            nullable: true,
          )
        },
        widgetStates: {
          'textFieldText': debugSerializeParam(
            textController?.text,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CartProductsComponent',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'couponQuery': debugSerializeParam(
            couponQuery,
            ParamType.Document,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CartProductsComponent',
            name: 'coupons',
            nullable: true,
          ),
          'serializedCartItems': debugSerializeParam(
            serializedCartItems,
            ParamType.JSON,
            isList: true,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CartProductsComponent',
            name: 'dynamic',
            nullable: true,
          ),
          'createOrderApiResultpx8': debugSerializeParam(
            createOrderApiResultpx8,
            ParamType.ApiResponse,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CartProductsComponent',
            name: 'ApiCallResponse',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'priceSummaryModel (PriceSummary)':
              priceSummaryModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        dynamicComponentStates: {
          'cartItemModels (List<CartItem>)': DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(cartItemModels.length, (index) => '[$index]'),
              cartItemModels.values.map((e) => e.toWidgetClassDebugData()),
            ),
          ),
        }.withoutNulls,
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=CartProductsComponent',
        searchReference:
            'reference=OhVDYXJ0UHJvZHVjdHNDb21wb25lbnRQAFoVQ2FydFByb2R1Y3RzQ29tcG9uZW50',
        widgetClassName: 'CartProductsComponent',
      );
}
