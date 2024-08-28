import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'square_leading_widget.dart' show SquareLeadingWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SquareLeadingModel extends FlutterFlowModel<SquareLeadingWidget> {
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
          'onTap': debugSerializeParam(
            widget?.onTap,
            ParamType.Action,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=SquareLeading',
            searchReference:
                'reference=ShcKDwoFb25UYXASBnpvYnV4eHIECBUgAVAAWgVvblRhcA==',
            name: 'Future Function()',
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
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=SquareLeading',
        searchReference:
            'reference=Og1TcXVhcmVMZWFkaW5nUABaDVNxdWFyZUxlYWRpbmc=',
        widgetClassName: 'SquareLeading',
      );
}
