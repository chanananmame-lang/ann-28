import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/orders/order_item/order_item_widget.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_list_page_model.dart';
export 'order_list_page_model.dart';

class OrderListPageWidget extends StatefulWidget {
  const OrderListPageWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<OrderListPageWidget> createState() => _OrderListPageWidgetState();
}

class _OrderListPageWidgetState extends State<OrderListPageWidget>
    with RouteAware {
  late OrderListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderListPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, DebugModalRoute.of(context)!);
    debugLogGlobalProperty(context);
  }

  @override
  void didPopNext() {
    if (mounted) {
      setState(() => _model.isRouteVisible = true);
    }
    debugLogWidgetClass(_model);
  }

  @override
  void didPush() {
    if (mounted) {
      setState(() => _model.isRouteVisible = true);
    }
    debugLogWidgetClass(_model);
  }

  @override
  void didPop() {
    _model.isRouteVisible = false;
  }

  @override
  void didPushNext() {
    _model.isRouteVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    widget.addModelFn?.call(_model);
    _model.orderItemModels.clear();

    return FutureBuilder<ApiCallResponse>(
      future: ProductGroup.getAllOrdersCall.call(
        userId: currentUserReference?.id,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final orderListPageGetAllOrdersResponse = snapshot.data!;
        _model.debugBackendQueries[
                'ProductGroup.getAllOrdersCall_statusCode_Scaffold_5y8rjs0x'] =
            debugSerializeParam(
          orderListPageGetAllOrdersResponse.statusCode,
          ParamType.int,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=OrderListPage',
          name: 'int',
          nullable: false,
        );
        _model.debugBackendQueries[
                'ProductGroup.getAllOrdersCall_responseBody_Scaffold_5y8rjs0x'] =
            debugSerializeParam(
          orderListPageGetAllOrdersResponse.bodyText,
          ParamType.String,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=OrderListPage',
          name: 'String',
          nullable: false,
        );
        debugLogWidgetClass(_model);

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Your orders',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Roboto',
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [
                Icon(
                  Icons.more_vert,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Builder(
                builder: (context) {
                  final orderList = (orderListPageGetAllOrdersResponse.jsonBody
                              .toList()
                              .map<OrdersStruct?>(OrdersStruct.maybeFromMap)
                              .toList() as Iterable<OrdersStruct?>)
                          .withoutNulls
                          ?.toList() ??
                      [];
                  _model.debugGeneratorVariables[
                          'orderList${orderList.length > 100 ? ' (first 100)' : ''}'] =
                      debugSerializeParam(
                    orderList.take(100),
                    ParamType.DataStruct,
                    isList: true,
                    link:
                        'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=OrderListPage',
                    name: 'Orders',
                    nullable: false,
                  );
                  debugLogWidgetClass(_model);

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: orderList.length,
                    itemBuilder: (context, orderListIndex) {
                      final orderListItem = orderList[orderListIndex];
                      return Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Order: ${orderListItem.id.substring(0, 5)}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '(',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          TextSpan(
                                            text: orderListItem
                                                .productItems.length
                                                .toString(),
                                            style: TextStyle(),
                                          ),
                                          TextSpan(
                                            text: ' items) ',
                                            style: TextStyle(),
                                          ),
                                          TextSpan(
                                            text: '\$${formatNumber(
                                              orderListItem.totalAmount,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.periodDecimal,
                                            )}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              StyledDivider(
                                thickness: 1.0,
                                indent: 10.0,
                                endIndent: 10.0,
                                color: FlutterFlowTheme.of(context).alternate,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                              Builder(
                                builder: (context) {
                                  final productItemList =
                                      orderListItem.productItems.toList();
                                  _model.debugGeneratorVariables[
                                          'productItemList${productItemList.length > 100 ? ' (first 100)' : ''}'] =
                                      debugSerializeParam(
                                    productItemList.take(100),
                                    ParamType.DataStruct,
                                    isList: true,
                                    link:
                                        'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=uiBuilder&page=OrderListPage',
                                    name: 'items',
                                    nullable: false,
                                  );
                                  debugLogWidgetClass(_model);

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children:
                                        List.generate(productItemList.length,
                                            (productItemListIndex) {
                                      final productItemListItem =
                                          productItemList[productItemListIndex];
                                      return OrderItemWidget(
                                        key: Key(
                                            'Key4pe_${productItemListIndex}_of_${productItemList.length}'),
                                        item: productItemListItem,
                                        addModelFn: (m) {
                                          m.parentModel = _model;
                                          _model.orderItemModels[
                                              'Key4pe_${productItemListIndex}_of_${productItemList.length}'] = m;
                                        },
                                      );
                                    }),
                                  );
                                },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 24.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'View All',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
