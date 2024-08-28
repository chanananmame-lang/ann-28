import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import '/profile/confirm_delivery_location_bottom_sheet/confirm_delivery_location_bottom_sheet_widget.dart';
import 'dart:io';
import 'address_edit_page_widget.dart' show AddressEditPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';

class AddressEditPageModel extends FlutterFlowModel<AddressEditPageWidget> {
  ///  Local state fields for this page.

  FFPlace? _place;
  set place(FFPlace? value) {
    _place = value;
    debugLogWidgetClass(rootModel);
  }

  FFPlace? get place => _place;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for ConfirmDeliveryLocationBottomSheet component.
  late ConfirmDeliveryLocationBottomSheetModel
      confirmDeliveryLocationBottomSheetModel;
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
  void initState(BuildContext context) {
    confirmDeliveryLocationBottomSheetModel = createModel(context,
        () => ConfirmDeliveryLocationBottomSheetModel()..parentModel = this);

    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {
    confirmDeliveryLocationBottomSheetModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'place': debugSerializeParam(
            place,
            ParamType.FFPlace,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=AddressEditPage',
            searchReference:
                'reference=QhQKDgoFcGxhY2USBWF1N3djcgIID1ABWgVwbGFjZWIPQWRkcmVzc0VkaXRQYWdl',
            name: 'FFPlace',
            nullable: true,
          )
        },
        widgetStates: {
          'placePickerValue': debugSerializeParam(
            placePickerValue,
            ParamType.FFPlace,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=AddressEditPage',
            name: 'FFPlace',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'confirmDeliveryLocationBottomSheetModel (ConfirmDeliveryLocationBottomSheet)':
              confirmDeliveryLocationBottomSheetModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=AddressEditPage',
        searchReference:
            'reference=Og9BZGRyZXNzRWRpdFBhZ2VQAVoPQWRkcmVzc0VkaXRQYWdl',
        widgetClassName: 'AddressEditPage',
      );
}
