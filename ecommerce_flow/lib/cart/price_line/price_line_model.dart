import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'price_line_widget.dart' show PriceLineWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PriceLineModel extends FlutterFlowModel<PriceLineWidget> {
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
          'title': debugSerializeParam(
            widget?.title,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=PriceLine',
            searchReference:
                'reference=ShcKDwoFdGl0bGUSBnF3anR2OXIECAMgAVAAWgV0aXRsZQ==',
            name: 'String',
            nullable: true,
          ),
          'cost': debugSerializeParam(
            widget?.cost,
            ParamType.double,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=PriceLine',
            searchReference:
                'reference=ShYKDgoEY29zdBIGOHZkODlncgQIAiABUABaBGNvc3Q=',
            name: 'double',
            nullable: true,
          ),
          'cartPriceType': debugSerializeParam(
            widget?.cartPriceType,
            ParamType.Enum,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=PriceLine',
            searchReference:
                'reference=SjkKFwoNY2FydFByaWNlVHlwZRIGcDJtZTE4ch4IGyABKhgaFgoNY2FydFByaWNlVHlwZRIFbXZrZ3VQAFoNY2FydFByaWNlVHlwZQ==',
            name: 'cartPriceType',
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
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=PriceLine',
        searchReference: 'reference=OglQcmljZUxpbmVQAFoJUHJpY2VMaW5l',
        widgetClassName: 'PriceLine',
      );
}
