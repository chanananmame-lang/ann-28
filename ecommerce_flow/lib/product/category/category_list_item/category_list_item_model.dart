import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'category_list_item_widget.dart' show CategoryListItemWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoryListItemModel extends FlutterFlowModel<CategoryListItemWidget> {
  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'category': debugSerializeParam(
            widget?.category,
            ParamType.DataStruct,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CategoryListItem',
            searchReference:
                'reference=Si8KEgoIY2F0ZWdvcnkSBmdpMWY3bnIZCBQgASoTEhEKCENhdGVnb3J5EgU5aTU3dFAAWghjYXRlZ29yeQ==',
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
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=CategoryListItem',
        searchReference:
            'reference=OhBDYXRlZ29yeUxpc3RJdGVtUABaEENhdGVnb3J5TGlzdEl0ZW0=',
        widgetClassName: 'CategoryListItem',
      );
}
