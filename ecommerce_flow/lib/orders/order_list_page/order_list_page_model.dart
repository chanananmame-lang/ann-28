import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/orders/order_item/order_item_widget.dart';
import 'order_list_page_widget.dart' show OrderListPageWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderListPageModel extends FlutterFlowModel<OrderListPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for OrderItem dynamic component.
  Map<String, FlutterFlowModel> orderItemModels = {};

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        dynamicComponentStates: {
          'orderItemModels (List<OrderItem>)': DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(orderItemModels.length, (index) => '[$index]'),
              orderItemModels.values.map((e) => e.toWidgetClassDebugData()),
            ),
          ),
        }.withoutNulls,
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=OrderListPage',
        searchReference:
            'reference=Og1PcmRlckxpc3RQYWdlUAFaDU9yZGVyTGlzdFBhZ2U=',
        widgetClassName: 'OrderListPage',
      );
}
