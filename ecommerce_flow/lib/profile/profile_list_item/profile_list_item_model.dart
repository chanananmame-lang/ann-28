import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_list_item_widget.dart' show ProfileListItemWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileListItemModel extends FlutterFlowModel<ProfileListItemWidget> {
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
          'leadingIcon': debugSerializeParam(
            widget?.leadingIcon,
            ParamType.Widget,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProfileListItem',
            searchReference:
                'reference=SiEKFQoLbGVhZGluZ0ljb24SBndxMDl6NnIICAsgASoCMAJQAFoLbGVhZGluZ0ljb24=',
            name: 'Widget',
            nullable: true,
          ),
          'title': debugSerializeParam(
            widget?.title,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProfileListItem',
            searchReference:
                'reference=SiIKDwoFdGl0bGUSBnIyZzcwYSoJEgdbdGl0bGVdcgQIAyABUABaBXRpdGxl',
            name: 'String',
            nullable: false,
          ),
          'onTap': debugSerializeParam(
            widget?.onTap,
            ParamType.Action,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProfileListItem',
            searchReference:
                'reference=ShcKDwoFb25UYXASBmZza2VtZnIECBUgAVAAWgVvblRhcA==',
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
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=ProfileListItem',
        searchReference:
            'reference=Og9Qcm9maWxlTGlzdEl0ZW1QAFoPUHJvZmlsZUxpc3RJdGVt',
        widgetClassName: 'ProfileListItem',
      );
}
