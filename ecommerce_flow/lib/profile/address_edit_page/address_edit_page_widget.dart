import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import '/profile/confirm_delivery_location_bottom_sheet/confirm_delivery_location_bottom_sheet_widget.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'address_edit_page_model.dart';
export 'address_edit_page_model.dart';

class AddressEditPageWidget extends StatefulWidget {
  const AddressEditPageWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<AddressEditPageWidget> createState() => _AddressEditPageWidgetState();
}

class _AddressEditPageWidgetState extends State<AddressEditPageWidget>
    with RouteAware {
  late AddressEditPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressEditPageModel());
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            alignment: AlignmentDirectional(0.0, 1.0),
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowGoogleMap(
                  controller: _model.googleMapsController,
                  onCameraIdle: (latLng) =>
                      setState(() => _model.googleMapsCenter = latLng),
                  initialLocation: _model.googleMapsCenter ??=
                      FFAppState().LatLngList.first,
                  markers: FFAppState()
                      .LatLngList
                      .map(
                        (marker) => FlutterFlowMarker(
                          marker.serialize(),
                          marker,
                        ),
                      )
                      .toList(),
                  markerColor: GoogleMarkerColor.violet,
                  markerImage: MarkerImage(
                    imagePath:
                        'assets/images/@3xlogoMark_outlinePrimary_fav.png',
                    isAssetImage: true,
                    size: 36.0 ?? 20,
                  ),
                  mapType: MapType.normal,
                  style: GoogleMapStyle.silver,
                  initialZoom: 13.0,
                  allowInteraction: false,
                  allowZoom: false,
                  showZoomControls: true,
                  showLocation: true,
                  showCompass: false,
                  showMapToolbar: true,
                  showTraffic: false,
                  centerMapOnMarkerTap: true,
                ),
              ),
              PointerInterceptor(
                intercepting: isWeb,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).alternate,
                        icon: Icon(
                          Icons.my_location,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          await _model.googleMapsController.future.then(
                            (c) => c.animateCamera(
                              CameraUpdate.newLatLng(_model
                                  .confirmDeliveryLocationBottomSheetModel
                                  .placePickerValue
                                  .latLng
                                  .toGoogleMaps()),
                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.confirmDeliveryLocationBottomSheetModel,
                        updateCallback: () => setState(() {}),
                        updateOnChange: true,
                        child: ConfirmDeliveryLocationBottomSheetWidget(),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, -1.0),
                child: PointerInterceptor(
                  intercepting: isWeb,
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: PointerInterceptor(
                  intercepting: isWeb,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: FlutterFlowPlacePicker(
                      iOSGoogleMapsApiKey:
                          'AIzaSyC0IibM8guwahvq423LTmwyR_PEgRpUJqQ',
                      androidGoogleMapsApiKey:
                          'AIzaSyCj3_pMHiGCSYUd-UnBC6dD1KRQgxHL0Q4',
                      webGoogleMapsApiKey:
                          'AIzaSyC7cAemX9svfk4mxrJggXjeaiQ15_Kn9WQ',
                      onSelect: (place) async {
                        setState(() => _model.placePickerValue = place);
                      },
                      defaultText: 'Select Location',
                      icon: Icon(
                        Icons.place,
                        color: FlutterFlowTheme.of(context).info,
                        size: 16.0,
                      ),
                      buttonOptions: FFButtonOptions(
                        width: 200.0,
                        height: 40.0,
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
