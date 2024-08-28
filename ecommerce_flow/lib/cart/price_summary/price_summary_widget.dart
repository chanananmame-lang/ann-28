import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/cart/price_line/price_line_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'price_summary_model.dart';
export 'price_summary_model.dart';

class PriceSummaryWidget extends StatefulWidget {
  const PriceSummaryWidget({
    super.key,
    this.addModelFn,
    required this.cartItems,
    this.appliedCoupon,
    required this.totalCost,
  });

  final List<ItemsStruct>? cartItems;
  final CouponsRecord? appliedCoupon;
  final double? totalCost;
  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<PriceSummaryWidget> createState() => _PriceSummaryWidgetState();
}

class _PriceSummaryWidgetState extends State<PriceSummaryWidget>
    with RouteAware {
  late PriceSummaryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PriceSummaryModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.addModelFn?.call(_model);
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Price Breakdown',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Roboto',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.subtotalModel,
                updateCallback: () => setState(() {}),
                child: PriceLineWidget(
                  title: 'Subtotal',
                  cost: functions.calculateCartTotals(
                      widget!.cartItems!.toList(), CartPriceType.subTotal),
                  cartPriceType: CartPriceType.subTotal,
                ),
              ),
              wrapWithModel(
                model: _model.discountModel,
                updateCallback: () => setState(() {}),
                child: PriceLineWidget(
                  title: 'Total Discount ',
                  cost: functions.calculateCartTotals(
                      widget!.cartItems!.toList(), CartPriceType.discount),
                  cartPriceType: CartPriceType.discount,
                ),
              ),
              wrapWithModel(
                model: _model.shippingFeeModel,
                updateCallback: () => setState(() {}),
                child: PriceLineWidget(
                  title: 'Shipping fee',
                  cost: functions.calculateCartTotals(
                      widget!.cartItems!.toList(), CartPriceType.subTotal),
                  cartPriceType: CartPriceType.subTotal,
                ),
              ),
              if (widget!.appliedCoupon != null)
                wrapWithModel(
                  model: _model.appliedCouponCostModel,
                  updateCallback: () => setState(() {}),
                  child: PriceLineWidget(
                    title: 'Coupon Applied',
                    cost: widget!.appliedCoupon?.discountType ==
                            DiscountType.percentage
                        ? (functions.calculateCartTotals(
                                widget!.cartItems!.toList(),
                                CartPriceType.subTotal) *
                            (widget!.appliedCoupon!.value / 100))
                        : widget!.appliedCoupon!.value,
                    cartPriceType: CartPriceType.discount,
                  ),
                ),
              wrapWithModel(
                model: _model.totalAmountModel,
                updateCallback: () => setState(() {}),
                child: PriceLineWidget(
                  title: 'Total Amount',
                  cost: widget!.totalCost!,
                  cartPriceType: CartPriceType.totalCost,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
