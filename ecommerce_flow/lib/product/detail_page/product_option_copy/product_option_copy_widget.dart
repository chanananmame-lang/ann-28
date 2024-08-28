import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_option_copy_model.dart';
export 'product_option_copy_model.dart';

class ProductOptionCopyWidget extends StatefulWidget {
  const ProductOptionCopyWidget({
    super.key,
    this.addModelFn,
    this.sizeValues,
    this.colorValues,
    int? maxQuantity,
    required this.onSizeSelected,
    required this.onColorSelected,
    required this.onQuantityChanged,
  }) : this.maxQuantity = maxQuantity ?? 10;

  final List<String>? sizeValues;
  final List<ColorsStruct>? colorValues;
  final int maxQuantity;
  final Future Function(String finalSize)? onSizeSelected;
  final Future Function(String finalColor)? onColorSelected;
  final Future Function(int finalQuantity)? onQuantityChanged;
  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<ProductOptionCopyWidget> createState() =>
      _ProductOptionCopyWidgetState();
}

class _ProductOptionCopyWidgetState extends State<ProductOptionCopyWidget>
    with RouteAware {
  late ProductOptionCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductOptionCopyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.addModelFn?.call(_model);
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Color ${widget!.colorValues?.first?.colorName}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        letterSpacing: 0.0,
                      ),
                ),
                Container(
                  height: 70.0,
                  decoration: BoxDecoration(),
                  child: Builder(
                    builder: (context) {
                      final colorList = widget!.colorValues?.toList() ?? [];
                      _model.debugGeneratorVariables[
                              'colorList${colorList.length > 100 ? ' (first 100)' : ''}'] =
                          debugSerializeParam(
                        colorList.take(100),
                        ParamType.DataStruct,
                        isList: true,
                        link:
                            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
                        name: 'colors',
                        nullable: false,
                      );
                      debugLogWidgetClass(_model);

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: colorList.length,
                        itemBuilder: (context, colorListIndex) {
                          final colorListItem = colorList[colorListIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 10.0, 10.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: colorFromCssString(
                                  colorListItem.colorHex,
                                  defaultColor:
                                      FlutterFlowTheme.of(context).primary,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Size  ${widget!.sizeValues?.first}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        letterSpacing: 0.0,
                      ),
                ),
                Container(
                  height: 70.0,
                  decoration: BoxDecoration(),
                  child: Builder(
                    builder: (context) {
                      final sizeList = widget!.sizeValues?.toList() ?? [];
                      _model.debugGeneratorVariables[
                              'sizeList${sizeList.length > 100 ? ' (first 100)' : ''}'] =
                          debugSerializeParam(
                        sizeList.take(100),
                        ParamType.String,
                        isList: true,
                        link:
                            'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=ProductOptionCopy',
                        name: 'String',
                        nullable: false,
                      );
                      debugLogWidgetClass(_model);

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: sizeList.length,
                        itemBuilder: (context, sizeListIndex) {
                          final sizeListItem = sizeList[sizeListIndex];
                          return Builder(
                            builder: (context) {
                              if (_model.selectedSize != sizeListItem) {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 10.0, 10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await _model.onSizeOptionSelected(
                                        context,
                                        index: sizeListIndex,
                                      );
                                      setState(() {});
                                      await widget.onSizeSelected?.call(
                                        valueOrDefault<String>(
                                          _model.selectedSize,
                                          'Free Size',
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          width: 1.0,
                                        ),
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        sizeListItem,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 10.0, 10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await _model.onSizeOptionSelected(
                                        context,
                                        index: sizeListIndex,
                                      );
                                      setState(() {});
                                      await widget.onSizeSelected?.call(
                                        valueOrDefault<String>(
                                          _model.selectedSize,
                                          'Free Size',
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        sizeListItem,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 18.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onLongPress: () async {
              _model.isSelected = !_model.isSelected;
              setState(() {});
            },
            child: Container(
              width: double.infinity,
              height: 75.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(18.0),
                border: Border.all(
                  color: _model.isSelected
                      ? FlutterFlowTheme.of(context).tertiary
                      : Color(0x00000000),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose your quantity',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Roboto',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 24.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.quantity > 1) {
                                  _model.quantity = _model.quantity + -1;
                                  setState(() {});
                                  await widget.onQuantityChanged?.call(
                                    _model.quantity,
                                  );
                                }
                              },
                              child: Container(
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  shape: BoxShape.circle,
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '-',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          _model.quantity.toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.quantity = _model.quantity + 1;
                                setState(() {});
                                await widget.onQuantityChanged?.call(
                                  _model.quantity,
                                );
                              },
                              child: Container(
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  shape: BoxShape.circle,
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '+',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
