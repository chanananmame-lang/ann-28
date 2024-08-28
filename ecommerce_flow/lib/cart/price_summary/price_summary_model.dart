import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/cart/price_line/price_line_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'price_summary_widget.dart' show PriceSummaryWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PriceSummaryModel extends FlutterFlowModel<PriceSummaryWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for subtotal.
  late PriceLineModel subtotalModel;
  // Model for discount.
  late PriceLineModel discountModel;
  // Model for shippingFee.
  late PriceLineModel shippingFeeModel;
  // Model for appliedCouponCost.
  late PriceLineModel appliedCouponCostModel;
  // Model for TotalAmount.
  late PriceLineModel totalAmountModel;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    subtotalModel =
        createModel(context, () => PriceLineModel()..parentModel = this);
    discountModel =
        createModel(context, () => PriceLineModel()..parentModel = this);
    shippingFeeModel =
        createModel(context, () => PriceLineModel()..parentModel = this);
    appliedCouponCostModel =
        createModel(context, () => PriceLineModel()..parentModel = this);
    totalAmountModel =
        createModel(context, () => PriceLineModel()..parentModel = this);
  }

  @override
  void dispose() {
    subtotalModel.dispose();
    discountModel.dispose();
    shippingFeeModel.dispose();
    appliedCouponCostModel.dispose();
    totalAmountModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'cartItems': debugSerializeParam(
            widget?.cartItems,
            ParamType.DataStruct,
            isList: true,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=PriceSummary',
            searchReference:
                'reference=Si8KEwoJY2FydEl0ZW1zEgZiOTBsMGpyGBICCBQgASoQEg4KBWl0ZW1zEgVvNGNpYVAAWgljYXJ0SXRlbXM=',
            name: 'items',
            nullable: true,
          ),
          'appliedCoupon': debugSerializeParam(
            widget?.appliedCoupon,
            ParamType.Document,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=PriceSummary',
            searchReference:
                'reference=SiwKFwoNYXBwbGllZENvdXBvbhIGN2IzajFtchEIByAAKgsKCQoHY291cG9uc1AAWg1hcHBsaWVkQ291cG9u',
            name: 'coupons',
            nullable: true,
          ),
          'totalCost': debugSerializeParam(
            widget?.totalCost,
            ParamType.double,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=PriceSummary',
            searchReference:
                'reference=ShsKEwoJdG90YWxDb3N0EgY2aWJsejRyBAgCIAFQAFoJdG90YWxDb3N0',
            name: 'double',
            nullable: true,
          )
        }.withoutNulls,
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'subtotalModel (subtotal)': subtotalModel?.toWidgetClassDebugData(),
          'discountModel (discount)': discountModel?.toWidgetClassDebugData(),
          'shippingFeeModel (shippingFee)':
              shippingFeeModel?.toWidgetClassDebugData(),
          'appliedCouponCostModel (appliedCouponCost)':
              appliedCouponCostModel?.toWidgetClassDebugData(),
          'totalAmountModel (TotalAmount)':
              totalAmountModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=PriceSummary',
        searchReference: 'reference=OgxQcmljZVN1bW1hcnlQAFoMUHJpY2VTdW1tYXJ5',
        widgetClassName: 'PriceSummary',
      );
}
