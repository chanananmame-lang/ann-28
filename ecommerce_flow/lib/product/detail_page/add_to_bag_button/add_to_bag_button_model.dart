import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_to_bag_button_widget.dart' show AddToBagButtonWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddToBagButtonModel extends FlutterFlowModel<AddToBagButtonWidget> {
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
          'onAddToBag': debugSerializeParam(
            widget?.onAddToBag,
            ParamType.Action,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=AddToBagButton',
            searchReference:
                'reference=ShwKFAoKb25BZGRUb0JhZxIGaGt1dXpkcgQIFSABUABaCm9uQWRkVG9CYWc=',
            name: 'Future Function()',
            nullable: true,
          ),
          'onGoToBag': debugSerializeParam(
            widget?.onGoToBag,
            ParamType.Action,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=AddToBagButton',
            searchReference:
                'reference=ShsKEwoJb25Hb1RvQmFnEgYyMmwyOGtyBAgVIAFQAFoJb25Hb1RvQmFn',
            name: 'Future Function()',
            nullable: true,
          ),
          'isItemAddedToCart': debugSerializeParam(
            widget?.isItemAddedToCart,
            ParamType.bool,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=AddToBagButton',
            searchReference:
                'reference=SiwKGwoRaXNJdGVtQWRkZWRUb0NhcnQSBnY4NTczMioHEgVmYWxzZXIECAUgAVAAWhFpc0l0ZW1BZGRlZFRvQ2FydA==',
            name: 'bool',
            nullable: false,
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
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=AddToBagButton',
        searchReference:
            'reference=Og5BZGRUb0JhZ0J1dHRvblAAWg5BZGRUb0JhZ0J1dHRvbg==',
        widgetClassName: 'AddToBagButton',
      );
}
