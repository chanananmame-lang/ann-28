import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cart_counter_model.dart';
export 'cart_counter_model.dart';

class CartCounterWidget extends StatefulWidget {
  const CartCounterWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<CartCounterWidget> createState() => _CartCounterWidgetState();
}

class _CartCounterWidgetState extends State<CartCounterWidget> with RouteAware {
  late CartCounterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartCounterModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.addModelFn?.call(_model);
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        if (FFAppState().cartItems.isNotEmpty) {
          return Stack(
            alignment: AlignmentDirectional(1.0, -1.0),
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).primary,
                  borderRadius: 40.0,
                  borderWidth: 2.0,
                  buttonSize: 48.0,
                  icon: Icon(
                    Icons.shopping_cart,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('CartPage');
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.0, 0.0),
                child: Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    shape: BoxShape.circle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    FFAppState().cartItems.length.toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
          );
        } else {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).primary,
              borderRadius: 40.0,
              borderWidth: 1.0,
              buttonSize: 48.0,
              fillColor: FlutterFlowTheme.of(context).tertiary,
              icon: Icon(
                Icons.shopping_cart,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed('CartPage');
              },
            ),
          );
        }
      },
    );
  }
}
