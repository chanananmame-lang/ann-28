import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/cart/cart_counter/cart_counter_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/product/detail_page/add_to_bag_button/add_to_bag_button_widget.dart';
import '/product/detail_page/product_option_copy/product_option_copy_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'product_detail_page_widget.dart' show ProductDetailPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDetailPageModel extends FlutterFlowModel<ProductDetailPageWidget> {
  ///  Local state fields for this page.

  bool _isSelected = false;
  set isSelected(bool value) {
    _isSelected = value;
    debugLogWidgetClass(rootModel);
  }

  bool get isSelected => _isSelected;

  int _selectedQuantity = 1;
  set selectedQuantity(int value) {
    _selectedQuantity = value;
    debugLogWidgetClass(rootModel);
  }

  int get selectedQuantity => _selectedQuantity;

  String? _selectedSize;
  set selectedSize(String? value) {
    _selectedSize = value;
    debugLogWidgetClass(rootModel);
  }

  String? get selectedSize => _selectedSize;

  String? _selectedColorHex;
  set selectedColorHex(String? value) {
    _selectedColorHex = value;
    debugLogWidgetClass(rootModel);
  }

  String? get selectedColorHex => _selectedColorHex;

  bool _itemAddedToCart = false;
  set itemAddedToCart(bool value) {
    _itemAddedToCart = value;
    debugLogWidgetClass(rootModel);
  }

  bool get itemAddedToCart => _itemAddedToCart;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CartCounter component.
  late CartCounterModel cartCounterModel;
  // Model for ProductOptionCopy component.
  late ProductOptionCopyModel productOptionCopyModel;
  // Model for AddToBagButton component.
  late AddToBagButtonModel addToBagButtonModel;
  // Stores action output result for [Custom Action - getIndexWhereProductIDExists] action in AddToBagButton widget.
  int? productIndex;
  // Stores action output result for [Backend Call - Create Document] action in AddToBagButton widget.
  CartsRecord? createCartResponse;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    cartCounterModel =
        createModel(context, () => CartCounterModel()..parentModel = this);
    productOptionCopyModel = createModel(
        context, () => ProductOptionCopyModel()..parentModel = this);
    addToBagButtonModel =
        createModel(context, () => AddToBagButtonModel()..parentModel = this);

    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {
    cartCounterModel.dispose();
    productOptionCopyModel.dispose();
    addToBagButtonModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'productId': debugSerializeParam(
            widget?.productId,
            ParamType.int,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductDetailPage',
            searchReference:
                'reference=ShsKEwoJcHJvZHVjdElkEgYwamZ0YXFyBAgBIAFQAVoJcHJvZHVjdElk',
            name: 'int',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'isSelected': debugSerializeParam(
            isSelected,
            ParamType.bool,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductDetailPage',
            searchReference:
                'reference=QhsKEwoKaXNTZWxlY3RlZBIFcjI0ZXhyBAgFIAFQAVoKaXNTZWxlY3RlZGIRUHJvZHVjdERldGFpbFBhZ2U=',
            name: 'bool',
            nullable: false,
          ),
          'selectedQuantity': debugSerializeParam(
            selectedQuantity,
            ParamType.int,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductDetailPage',
            searchReference:
                'reference=QiEKGQoQc2VsZWN0ZWRRdWFudGl0eRIFNWxyMWlyBAgBIAFQAVoQc2VsZWN0ZWRRdWFudGl0eWIRUHJvZHVjdERldGFpbFBhZ2U=',
            name: 'int',
            nullable: false,
          ),
          'selectedSize': debugSerializeParam(
            selectedSize,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductDetailPage',
            searchReference:
                'reference=Qh0KFQoMc2VsZWN0ZWRTaXplEgVicHNiMHIECAMgAFABWgxzZWxlY3RlZFNpemViEVByb2R1Y3REZXRhaWxQYWdl',
            name: 'String',
            nullable: true,
          ),
          'selectedColorHex': debugSerializeParam(
            selectedColorHex,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductDetailPage',
            searchReference:
                'reference=QiUKGQoQc2VsZWN0ZWRDb2xvckhleBIFYnhiMTIqAhIAcgQIAyAAUAFaEHNlbGVjdGVkQ29sb3JIZXhiEVByb2R1Y3REZXRhaWxQYWdl',
            name: 'String',
            nullable: true,
          ),
          'itemAddedToCart': debugSerializeParam(
            itemAddedToCart,
            ParamType.bool,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductDetailPage',
            searchReference:
                'reference=QikKGAoPaXRlbUFkZGVkVG9DYXJ0EgV3d21reCoHEgVmYWxzZXIECAUgAVABWg9pdGVtQWRkZWRUb0NhcnRiEVByb2R1Y3REZXRhaWxQYWdl',
            name: 'bool',
            nullable: false,
          )
        },
        actionOutputs: {
          'productIndex': debugSerializeParam(
            productIndex,
            ParamType.int,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductDetailPage',
            name: 'int',
            nullable: true,
          ),
          'createCartResponse': debugSerializeParam(
            createCartResponse,
            ParamType.Document,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductDetailPage',
            name: 'carts',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'cartCounterModel (CartCounter)':
              cartCounterModel?.toWidgetClassDebugData(),
          'productOptionCopyModel (ProductOptionCopy)':
              productOptionCopyModel?.toWidgetClassDebugData(),
          'addToBagButtonModel (AddToBagButton)':
              addToBagButtonModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=ProductDetailPage',
        searchReference:
            'reference=OhFQcm9kdWN0RGV0YWlsUGFnZVABWhFQcm9kdWN0RGV0YWlsUGFnZQ==',
        widgetClassName: 'ProductDetailPage',
      );
}
