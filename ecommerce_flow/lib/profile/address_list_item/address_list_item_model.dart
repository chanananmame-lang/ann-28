import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'address_list_item_widget.dart' show AddressListItemWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddressListItemModel extends FlutterFlowModel<AddressListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? _checkboxValue1;
  set checkboxValue1(bool? value) {
    _checkboxValue1 = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get checkboxValue1 => _checkboxValue1;

  // State field(s) for Checkbox widget.
  bool? _checkboxValue2;
  set checkboxValue2(bool? value) {
    _checkboxValue2 = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get checkboxValue2 => _checkboxValue2;

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
          'isSelected': debugSerializeParam(
            widget?.isSelected,
            ParamType.bool,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=AddressListItem',
            searchReference:
                'reference=SiUKFAoKaXNTZWxlY3RlZBIGdHRuZjlmKgcSBWZhbHNlcgQIBSABUABaCmlzU2VsZWN0ZWQ=',
            name: 'bool',
            nullable: false,
          )
        }.withoutNulls,
        widgetStates: {
          'checkboxValue1': debugSerializeParam(
            checkboxValue1,
            ParamType.bool,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=AddressListItem',
            name: 'bool',
            nullable: true,
          ),
          'checkboxValue2': debugSerializeParam(
            checkboxValue2,
            ParamType.bool,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=AddressListItem',
            name: 'bool',
            nullable: true,
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
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=AddressListItem',
        searchReference:
            'reference=Og9BZGRyZXNzTGlzdEl0ZW1QAFoPQWRkcmVzc0xpc3RJdGVt',
        widgetClassName: 'AddressListItem',
      );
}
