import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/product/product_list_card/product_list_card_widget.dart';
import 'category_product_list_page_widget.dart'
    show CategoryProductListPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoryProductListPageModel
    extends FlutterFlowModel<CategoryProductListPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for categoryProductCard.
  Map<String, FlutterFlowModel> categoryProductCardModels = {};

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
        widgetParameters: {
          'category': debugSerializeParam(
            widget?.category,
            ParamType.DataStruct,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CategoryProductListPage',
            searchReference:
                'reference=Si8KEgoIY2F0ZWdvcnkSBjZobTFncnIZCBQgASoTEhEKCENhdGVnb3J5EgU5aTU3dFABWghjYXRlZ29yeQ==',
            name: 'Category',
            nullable: true,
          )
        }.withoutNulls,
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
          'categoryProductCardModels (List<categoryProductCard>)':
              DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(
                  categoryProductCardModels.length, (index) => '[$index]'),
              categoryProductCardModels.values
                  .map((e) => e.toWidgetClassDebugData()),
            ),
          ),
        }.withoutNulls,
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=CategoryProductListPage',
        searchReference:
            'reference=OhdDYXRlZ29yeVByb2R1Y3RMaXN0UGFnZVABWhdDYXRlZ29yeVByb2R1Y3RMaXN0UGFnZQ==',
        widgetClassName: 'CategoryProductListPage',
      );
}
