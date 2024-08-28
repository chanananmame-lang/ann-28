import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'price_line_model.dart';
export 'price_line_model.dart';

class PriceLineWidget extends StatefulWidget {
  const PriceLineWidget({
    super.key,
    this.addModelFn,
    required this.title,
    required this.cost,
    required this.cartPriceType,
  });

  final String? title;
  final double? cost;
  final CartPriceType? cartPriceType;
  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<PriceLineWidget> createState() => _PriceLineWidgetState();
}

class _PriceLineWidgetState extends State<PriceLineWidget> with RouteAware {
  late PriceLineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PriceLineModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.addModelFn?.call(_model);
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).info,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 6.0, 24.0, 6.0),
        child: Builder(
          builder: (context) {
            if (widget!.cartPriceType == CartPriceType.subTotal) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget!.title,
                      'Title',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    '\$${formatNumber(
                      widget!.cost,
                      formatType: FormatType.decimal,
                      decimalType: DecimalType.periodDecimal,
                    )}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              );
            } else if (widget!.cartPriceType == CartPriceType.discount) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget!.title,
                      'Title',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    '- \$${formatNumber(
                      widget!.cost,
                      formatType: FormatType.decimal,
                      decimalType: DecimalType.periodDecimal,
                    )}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).success,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              );
            } else {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget!.title,
                          'Total Cost',
                        ),
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 36.0,
                        icon: Icon(
                          Icons.info_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 18.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ],
                  ),
                  Text(
                    valueOrDefault<String>(
                      '\$${valueOrDefault<String>(
                        formatNumber(
                          widget!.cost,
                          formatType: FormatType.decimal,
                          decimalType: DecimalType.periodDecimal,
                        ),
                        '0.0',
                      )}',
                      '\$0.0',
                    ),
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Rubik',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
