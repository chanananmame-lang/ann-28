import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'category_avatar_widget.dart' show CategoryAvatarWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoryAvatarModel extends FlutterFlowModel<CategoryAvatarWidget> {
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
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=CategoryAvatar',
            searchReference:
                'reference=Si8KEgoIY2F0ZWdvcnkSBnV5ajZmaXIZCBQgASoTEhEKCENhdGVnb3J5EgU5aTU3dFAAWghjYXRlZ29yeQ==',
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
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=CategoryAvatar',
        searchReference:
            'reference=Og5DYXRlZ29yeUF2YXRhclAAWg5DYXRlZ29yeUF2YXRhcg==',
        widgetClassName: 'CategoryAvatar',
      );
}
