import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_to_bag_button_model.dart';
export 'add_to_bag_button_model.dart';

class AddToBagButtonWidget extends StatefulWidget {
  const AddToBagButtonWidget({
    super.key,
    this.addModelFn,
    required this.onAddToBag,
    required this.onGoToBag,
    bool? isItemAddedToCart,
  }) : this.isItemAddedToCart = isItemAddedToCart ?? false;

  final Future Function()? onAddToBag;
  final Future Function()? onGoToBag;
  final bool isItemAddedToCart;
  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<AddToBagButtonWidget> createState() => _AddToBagButtonWidgetState();
}

class _AddToBagButtonWidgetState extends State<AddToBagButtonWidget>
    with RouteAware {
  late AddToBagButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddToBagButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.addModelFn?.call(_model);
    return Builder(
      builder: (context) {
        if (!widget!.isItemAddedToCart) {
          return FFButtonWidget(
            onPressed: () async {
              await widget.onAddToBag?.call();
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
          );
        } else {
          return FFButtonWidget(
            onPressed: () async {
              await widget.onGoToBag?.call();
            },
            text: 'Go to Bag',
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
          );
        }
      },
    );
  }
}
