import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_list_card_widget.dart' show ProductListCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductListCardModel extends FlutterFlowModel<ProductListCardWidget> {
  ///  Local state fields for this component.

  bool _isFavourite = false;
  set isFavourite(bool value) {
    _isFavourite = value;
    debugLogWidgetClass(rootModel);
  }

  bool get isFavourite => _isFavourite;

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
          'productItem': debugSerializeParam(
            widget?.productItem,
            ParamType.DataStruct,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListCard',
            searchReference:
                'reference=SjEKFQoLcHJvZHVjdEl0ZW0SBmJrMXFlMnIYCBQgACoSEhAKB1Byb2R1Y3QSBWs0N3FvUABaC3Byb2R1Y3RJdGVt',
            name: 'Product',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'isFavourite': debugSerializeParam(
            isFavourite,
            ParamType.bool,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListCard',
            searchReference:
                'reference=QiUKFAoLaXNGYXZvdXJpdGUSBTJ4ZjhuKgcSBWZhbHNlcgQIBSABUABaC2lzRmF2b3VyaXRlYg9Qcm9kdWN0TGlzdENhcmQ=',
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
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=ProductListCard',
        searchReference:
            'reference=Og9Qcm9kdWN0TGlzdENhcmRQAFoPUHJvZHVjdExpc3RDYXJk',
        widgetClassName: 'ProductListCard',
      );
}
