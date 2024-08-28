import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile/profile_list_item/profile_list_item_widget.dart';
import 'profile_settings_page_widget.dart' show ProfileSettingsPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileSettingsPageModel
    extends FlutterFlowModel<ProfileSettingsPageWidget> {
  ///  Local state fields for this page.

  String _profileName = 'Joy Augustin';
  set profileName(String value) {
    _profileName = value;
    debugLogWidgetClass(rootModel);
  }

  String get profileName => _profileName;

  bool _isEditMode = false;
  set isEditMode(bool value) {
    _isEditMode = value;
    debugLogWidgetClass(rootModel);
  }

  bool get isEditMode => _isEditMode;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for ProfileListItem component.
  late ProfileListItemModel profileListItemModel1;
  // Model for ProfileListItem component.
  late ProfileListItemModel profileListItemModel2;
  // Model for ProfileListItem component.
  late ProfileListItemModel profileListItemModel3;
  // Model for ProfileListItem component.
  late ProfileListItemModel profileListItemModel4;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    profileListItemModel1 =
        createModel(context, () => ProfileListItemModel()..parentModel = this);
    profileListItemModel2 =
        createModel(context, () => ProfileListItemModel()..parentModel = this);
    profileListItemModel3 =
        createModel(context, () => ProfileListItemModel()..parentModel = this);
    profileListItemModel4 =
        createModel(context, () => ProfileListItemModel()..parentModel = this);

    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    profileListItemModel1.dispose();
    profileListItemModel2.dispose();
    profileListItemModel3.dispose();
    profileListItemModel4.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'profileName': debugSerializeParam(
            profileName,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProfileSettingsPage',
            searchReference:
                'reference=QiAKFAoLcHJvZmlsZU5hbWUSBTltbjFvKgISAHIECAMgAVABWgtwcm9maWxlTmFtZWITUHJvZmlsZVNldHRpbmdzUGFnZQ==',
            name: 'String',
            nullable: false,
          ),
          'isEditMode': debugSerializeParam(
            isEditMode,
            ParamType.bool,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProfileSettingsPage',
            searchReference:
                'reference=QiQKEwoKaXNFZGl0TW9kZRIFaGc3bjkqBxIFZmFsc2VyBAgFIAFQAVoKaXNFZGl0TW9kZWITUHJvZmlsZVNldHRpbmdzUGFnZQ==',
            name: 'bool',
            nullable: false,
          )
        },
        widgetStates: {
          'textFieldText': debugSerializeParam(
            textController?.text,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProfileSettingsPage',
            name: 'String',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'profileListItemModel1 (ProfileListItem)':
              profileListItemModel1?.toWidgetClassDebugData(),
          'profileListItemModel2 (ProfileListItem)':
              profileListItemModel2?.toWidgetClassDebugData(),
          'profileListItemModel3 (ProfileListItem)':
              profileListItemModel3?.toWidgetClassDebugData(),
          'profileListItemModel4 (ProfileListItem)':
              profileListItemModel4?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=ProfileSettingsPage',
        searchReference:
            'reference=OhNQcm9maWxlU2V0dGluZ3NQYWdlUAFaE1Byb2ZpbGVTZXR0aW5nc1BhZ2U=',
        widgetClassName: 'ProfileSettingsPage',
      );
}
