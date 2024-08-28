import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/cart/cart_counter/cart_counter_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/product/category/category_avatar/category_avatar_widget.dart';
import '/product/product_list_card/product_list_card_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'product_list_page_widget.dart' show ProductListPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductListPageModel extends FlutterFlowModel<ProductListPageWidget> {
  ///  Local state fields for this page.

  String? _searchString;
  set searchString(String? value) {
    _searchString = value;
    debugLogWidgetClass(rootModel);
  }

  String? get searchString => _searchString;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? _dropDownValue;
  set dropDownValue(String? value) {
    _dropDownValue = value;
    debugLogWidgetClass(rootModel);
  }

  String? get dropDownValue => _dropDownValue;

  FormFieldController<String>? dropDownValueController;
  // Model for CartCounter component.
  late CartCounterModel cartCounterModel;
  // State field(s) for searchQuery widget.
  FocusNode? searchQueryFocusNode;
  TextEditingController? searchQueryTextController;
  String? Function(BuildContext, String?)? searchQueryTextControllerValidator;
  // Models for CategoryAvatar dynamic component.
  Map<String, FlutterFlowModel> categoryAvatarModels = {};
  // Models for topSellingProductCard.
  Map<String, FlutterFlowModel> topSellingProductCardModels = {};
  // Models for newInProductCard.
  Map<String, FlutterFlowModel> newInProductCardModels = {};

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    cartCounterModel =
        createModel(context, () => CartCounterModel()..parentModel = this);

    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {
    cartCounterModel.dispose();
    searchQueryFocusNode?.dispose();
    searchQueryTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'searchString': debugSerializeParam(
            searchString,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
            searchReference:
                'reference=QiEKFQoMc2VhcmNoU3RyaW5nEgVsbXRsbioCEgByBAgDIABQAVoMc2VhcmNoU3RyaW5nYg9Qcm9kdWN0TGlzdFBhZ2U=',
            name: 'String',
            nullable: true,
          )
        },
        widgetStates: {
          'dropDownValue': debugSerializeParam(
            dropDownValue,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
            name: 'String',
            nullable: true,
          ),
          'searchQueryText': debugSerializeParam(
            searchQueryTextController?.text,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductListPage',
            name: 'String',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'cartCounterModel (CartCounter)':
              cartCounterModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        dynamicComponentStates: {
          'categoryAvatarModels (List<CategoryAvatar>)':
              DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(categoryAvatarModels.length, (index) => '[$index]'),
              categoryAvatarModels.values
                  .map((e) => e.toWidgetClassDebugData()),
            ),
          ),
          'topSellingProductCardModels (List<topSellingProductCard>)':
              DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(
                  topSellingProductCardModels.length, (index) => '[$index]'),
              topSellingProductCardModels.values
                  .map((e) => e.toWidgetClassDebugData()),
            ),
          ),
          'newInProductCardModels (List<newInProductCard>)':
              DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(
                  newInProductCardModels.length, (index) => '[$index]'),
              newInProductCardModels.values
                  .map((e) => e.toWidgetClassDebugData()),
            ),
          ),
        }.withoutNulls,
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=ProductListPage',
        searchReference:
            'reference=Og9Qcm9kdWN0TGlzdFBhZ2VQAVoPUHJvZHVjdExpc3RQYWdl',
        widgetClassName: 'ProductListPage',
      );
}
