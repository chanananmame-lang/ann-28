import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'styled_button_model.dart';
export 'styled_button_model.dart';

class StyledButtonWidget extends StatefulWidget {
  const StyledButtonWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<StyledButtonWidget> createState() => _StyledButtonWidgetState();
}

class _StyledButtonWidgetState extends State<StyledButtonWidget>
    with RouteAware {
  late StyledButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StyledButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.addModelFn?.call(_model);
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onLongPress: () async {
        _model.isSelected = !_model.isSelected;
        setState(() {});
      },
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: 'Add to Bag',
        options: FFButtonOptions(
          height: 50.0,
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: FlutterFlowTheme.of(context).primary,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Roboto',
                color: Colors.white,
                letterSpacing: 0.0,
              ),
          elevation: 3.0,
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
    );
  }
}
