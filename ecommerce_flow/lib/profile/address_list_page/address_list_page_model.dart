import '/components/square_leading_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile/address_list_item/address_list_item_widget.dart';
import 'address_list_page_widget.dart' show AddressListPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddressListPageModel extends FlutterFlowModel<AddressListPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AddressListItem component.
  late AddressListItemModel addressListItemModel;
  // Model for SquareLeading component.
  late SquareLeadingModel squareLeadingModel;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    addressListItemModel =
        createModel(context, () => AddressListItemModel()..parentModel = this);
    squareLeadingModel =
        createModel(context, () => SquareLeadingModel()..parentModel = this);

    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {
    addressListItemModel.dispose();
    squareLeadingModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'addressListItemModel (AddressListItem)':
              addressListItemModel?.toWidgetClassDebugData(),
          'squareLeadingModel (SquareLeading)':
              squareLeadingModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=AddressListPage',
        searchReference:
            'reference=Og9BZGRyZXNzTGlzdFBhZ2VQAVoPQWRkcmVzc0xpc3RQYWdl',
        widgetClassName: 'AddressListPage',
      );
}
