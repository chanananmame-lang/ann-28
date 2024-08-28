import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'styled_button_widget.dart' show StyledButtonWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StyledButtonModel extends FlutterFlowModel<StyledButtonWidget> {
  ///  Local state fields for this component.

  bool _isSelected = false;
  set isSelected(bool value) {
    _isSelected = value;
    debugLogWidgetClass(rootModel);
  }

  bool get isSelected => _isSelected;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'isSelected': debugSerializeParam(
            isSelected,
            ParamType.bool,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=StyledButton',
            searchReference:
                'reference=QiQKEwoKaXNTZWxlY3RlZBIFMDA4M20qBxIFZmFsc2VyBAgFIAFQAFoKaXNTZWxlY3RlZGIMU3R5bGVkQnV0dG9u',
            name: 'bool',
            nullable: false,
          )
        },
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
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=StyledButton',
        searchReference: 'reference=OgxTdHlsZWRCdXR0b25QAFoMU3R5bGVkQnV0dG9u',
        widgetClassName: 'StyledButton',
      );
}
