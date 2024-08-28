import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_password_page_widget.dart' show LoginPasswordPageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPasswordPageModel extends FlutterFlowModel<LoginPasswordPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    passwordVisibility = false;

    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'email': debugSerializeParam(
            widget?.email,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=LoginPasswordPage',
            searchReference:
                'reference=ShcKDwoFZW1haWwSBjg4aDFwNXIECAMgAVABWgVlbWFpbA==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'passwordText': debugSerializeParam(
            passwordTextController?.text,
            ParamType.String,
            link:
                'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=LoginPasswordPage',
            name: 'String',
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
            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t/tab=uiBuilder&page=LoginPasswordPage',
        searchReference:
            'reference=OhFMb2dpblBhc3N3b3JkUGFnZVABWhFMb2dpblBhc3N3b3JkUGFnZQ==',
        widgetClassName: 'LoginPasswordPage',
      );
}
