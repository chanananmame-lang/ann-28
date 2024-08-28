import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'confirm_delivery_location_bottom_sheet_widget.dart'
    show ConfirmDeliveryLocationBottomSheetWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfirmDeliveryLocationBottomSheetModel
    extends FlutterFlowModel<ConfirmDeliveryLocationBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PlacePicker widget.
  FFPlace _placePickerValue = FFPlace();
  set placePickerValue(FFPlace value) {
    _placePickerValue = value;
    debugLogWidgetClass(rootModel);
  }

  FFPlace get placePickerValue => _placePickerValue;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetStates: {
          'placePickerValue': debugSerializeParam(
            placePickerValue,
            ParamType.FFPlace,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ConfirmDeliveryLocationBottomSheet',
            name: 'FFPlace',
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
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=ConfirmDeliveryLocationBottomSheet',
        searchReference:
            'reference=OiJDb25maXJtRGVsaXZlcnlMb2NhdGlvbkJvdHRvbVNoZWV0UABaIkNvbmZpcm1EZWxpdmVyeUxvY2F0aW9uQm90dG9tU2hlZXQ=',
        widgetClassName: 'ConfirmDeliveryLocationBottomSheet',
      );
}
