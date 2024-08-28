import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/product/category/category_list_item/category_list_item_widget.dart';
import 'category_list_page_widget.dart' show CategoryListPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoryListPageModel extends FlutterFlowModel<CategoryListPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for CategoryListItem dynamic component.
  Map<String, FlutterFlowModel> categoryListItemModels = {};

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
          'categoryListItemModels (List<CategoryListItem>)':
              DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(
                  categoryListItemModels.length, (index) => '[$index]'),
              categoryListItemModels.values
                  .map((e) => e.toWidgetClassDebugData()),
            ),
          ),
        }.withoutNulls,
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=CategoryListPage',
        searchReference:
            'reference=OhBDYXRlZ29yeUxpc3RQYWdlUAFaEENhdGVnb3J5TGlzdFBhZ2U=',
        widgetClassName: 'CategoryListPage',
      );
}
