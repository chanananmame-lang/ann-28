import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_option_copy_widget.dart' show ProductOptionCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductOptionCopyModel extends FlutterFlowModel<ProductOptionCopyWidget> {
  ///  Local state fields for this component.

  bool _isSelected = false;
  set isSelected(bool value) {
    _isSelected = value;
    debugLogWidgetClass(rootModel);
  }

  bool get isSelected => _isSelected;

  int _quantity = 1;
  set quantity(int value) {
    _quantity = value;
    debugLogWidgetClass(rootModel);
  }

  int get quantity => _quantity;

  String? _selectedSize;
  set selectedSize(String? value) {
    _selectedSize = value;
    debugLogWidgetClass(rootModel);
  }

  String? get selectedSize => _selectedSize;

  Color? _selectedColor;
  set selectedColor(Color? value) {
    _selectedColor = value;
    debugLogWidgetClass(rootModel);
  }

  Color? get selectedColor => _selectedColor;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future onSizeOptionSelected(
    BuildContext context, {
    required int? index,
  }) async {
    selectedSize = widget!.sizeValues?[index!];
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'sizeValues': debugSerializeParam(
            widget?.sizeValues,
            ParamType.String,
            isList: true,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
            searchReference:
                'reference=Sh4KFAoKc2l6ZVZhbHVlcxIGN3VlZG04cgYSAggDIABQAFoKc2l6ZVZhbHVlcw==',
            name: 'String',
            nullable: true,
          ),
          'colorValues': debugSerializeParam(
            widget?.colorValues,
            ParamType.DataStruct,
            isList: true,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
            searchReference:
                'reference=SjIKFQoLY29sb3JWYWx1ZXMSBnFsOTUzM3IZEgIIFCAAKhESDwoGY29sb3JzEgVya3h5bFAAWgtjb2xvclZhbHVlcw==',
            name: 'colors',
            nullable: true,
          ),
          'maxQuantity': debugSerializeParam(
            widget?.maxQuantity,
            ParamType.int,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
            searchReference:
                'reference=SiMKFQoLbWF4UXVhbnRpdHkSBnhyNDk5NyoEEgIxMHIECAEgAFAAWgttYXhRdWFudGl0eQ==',
            name: 'int',
            nullable: false,
          ),
          'onSizeSelected': debugSerializeParam(
            widget?.onSizeSelected,
            ParamType.Action,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
            searchReference:
                'reference=Sj0KGAoOb25TaXplU2VsZWN0ZWQSBjg0eDBlcnIhCBUgATIbChMKCWZpbmFsU2l6ZRIGNjlycXc3cgQIAyABUABaDm9uU2l6ZVNlbGVjdGVk',
            name: 'Future Function(String finalSize)',
            nullable: true,
          ),
          'onColorSelected': debugSerializeParam(
            widget?.onColorSelected,
            ParamType.Action,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
            searchReference:
                'reference=Sj8KGQoPb25Db2xvclNlbGVjdGVkEgZ5djFqMTZyIggVIAEyHAoUCgpmaW5hbENvbG9yEgZ6OXFldzJyBAgDIAFQAFoPb25Db2xvclNlbGVjdGVk',
            name: 'Future Function(String finalColor)',
            nullable: true,
          ),
          'onQuantityChanged': debugSerializeParam(
            widget?.onQuantityChanged,
            ParamType.Action,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
            searchReference:
                'reference=SkQKGwoRb25RdWFudGl0eUNoYW5nZWQSBnM0cmtmZnIlCBUgATIfChcKDWZpbmFsUXVhbnRpdHkSBm5yampwcHIECAEgAVAAWhFvblF1YW50aXR5Q2hhbmdlZA==',
            name: 'Future Function(int finalQuantity)',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'isSelected': debugSerializeParam(
            isSelected,
            ParamType.bool,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
            searchReference:
                'reference=QhsKEwoKaXNTZWxlY3RlZBIFcjI0ZXhyBAgFIAFQAFoKaXNTZWxlY3RlZGIRUHJvZHVjdE9wdGlvbkNvcHk=',
            name: 'bool',
            nullable: false,
          ),
          'quantity': debugSerializeParam(
            quantity,
            ParamType.int,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
            searchReference:
                'reference=QhkKEQoIcXVhbnRpdHkSBTBsMWRvcgQIASABUABaCHF1YW50aXR5YhFQcm9kdWN0T3B0aW9uQ29weQ==',
            name: 'int',
            nullable: false,
          ),
          'selectedSize': debugSerializeParam(
            selectedSize,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
            searchReference:
                'reference=QiEKFQoMc2VsZWN0ZWRTaXplEgV1MDIydSoCEgByBAgDIABQAFoMc2VsZWN0ZWRTaXplYhFQcm9kdWN0T3B0aW9uQ29weQ==',
            name: 'String',
            nullable: true,
          ),
          'selectedColor': debugSerializeParam(
            selectedColor,
            ParamType.Color,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
            searchReference:
                'reference=Qh4KFgoNc2VsZWN0ZWRDb2xvchIFOGs1cThyBAgWIABQAFoNc2VsZWN0ZWRDb2xvcmIRUHJvZHVjdE9wdGlvbkNvcHk=',
            name: 'Color',
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
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=ProductOptionCopy',
        searchReference:
            'reference=OhFQcm9kdWN0T3B0aW9uQ29weVAAWhFQcm9kdWN0T3B0aW9uQ29weQ==',
        widgetClassName: 'ProductOptionCopy',
      );
}
