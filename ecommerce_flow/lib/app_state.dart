import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cartItems = LoggableList(
        prefs
                .getStringList('ff_cartItems')
                ?.map((x) {
                  try {
                    return ItemsStruct.fromSerializableMap(jsonDecode(x));
                  } catch (e) {
                    print("Can't decode persisted data type. Error: $e.");
                    return null;
                  }
                })
                .withoutNulls
                .toList() ??
            _cartItems,
      );
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _enableDarkMode = false;
  bool get enableDarkMode => _enableDarkMode;
  set enableDarkMode(bool value) {
    _enableDarkMode = value;

    debugLogAppState(this);
  }

  late LoggableList<LatLng> _LatLngList = LoggableList(
      [LatLng(37.4071594, -122.0775312), LatLng(40.7358633, -73.9910835)]);
  List<LatLng> get LatLngList =>
      _LatLngList?..logger = () => debugLogAppState(this);
  set LatLngList(List<LatLng> value) {
    if (value != null) {
      _LatLngList = LoggableList(value);
    }

    debugLogAppState(this);
  }

  void addToLatLngList(LatLng value) {
    LatLngList.add(value);
  }

  void removeFromLatLngList(LatLng value) {
    LatLngList.remove(value);
  }

  void removeAtIndexFromLatLngList(int index) {
    LatLngList.removeAt(index);
  }

  void updateLatLngListAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    LatLngList[index] = updateFn(_LatLngList[index]);
  }

  void insertAtIndexInLatLngList(int index, LatLng value) {
    LatLngList.insert(index, value);
  }

  late LoggableList<LatLng> _NYCLatLngList = LoggableList([
    LatLng(40.7682178, -73.9828988),
    LatLng(40.7261816, -74.0021307),
    LatLng(40.7419313, -73.984644)
  ]);
  List<LatLng> get NYCLatLngList =>
      _NYCLatLngList?..logger = () => debugLogAppState(this);
  set NYCLatLngList(List<LatLng> value) {
    if (value != null) {
      _NYCLatLngList = LoggableList(value);
    }

    debugLogAppState(this);
  }

  void addToNYCLatLngList(LatLng value) {
    NYCLatLngList.add(value);
  }

  void removeFromNYCLatLngList(LatLng value) {
    NYCLatLngList.remove(value);
  }

  void removeAtIndexFromNYCLatLngList(int index) {
    NYCLatLngList.removeAt(index);
  }

  void updateNYCLatLngListAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    NYCLatLngList[index] = updateFn(_NYCLatLngList[index]);
  }

  void insertAtIndexInNYCLatLngList(int index, LatLng value) {
    NYCLatLngList.insert(index, value);
  }

  late LoggableList<ItemsStruct> _cartItems = LoggableList([]);
  List<ItemsStruct> get cartItems =>
      _cartItems?..logger = () => debugLogAppState(this);
  set cartItems(List<ItemsStruct> value) {
    if (value != null) {
      _cartItems = LoggableList(value);
    }

    prefs.setStringList(
        'ff_cartItems', value.map((x) => x.serialize()).toList());
    debugLogAppState(this);
  }

  void addToCartItems(ItemsStruct value) {
    cartItems.add(value);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void removeFromCartItems(ItemsStruct value) {
    cartItems.remove(value);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCartItems(int index) {
    cartItems.removeAt(index);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void updateCartItemsAtIndex(
    int index,
    ItemsStruct Function(ItemsStruct) updateFn,
  ) {
    cartItems[index] = updateFn(_cartItems[index]);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCartItems(int index, ItemsStruct value) {
    cartItems.insert(index, value);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  late LoggableList<String> _localWishlist = LoggableList([]);
  List<String> get localWishlist =>
      _localWishlist?..logger = () => debugLogAppState(this);
  set localWishlist(List<String> value) {
    if (value != null) {
      _localWishlist = LoggableList(value);
    }

    debugLogAppState(this);
  }

  void addToLocalWishlist(String value) {
    localWishlist.add(value);
  }

  void removeFromLocalWishlist(String value) {
    localWishlist.remove(value);
  }

  void removeAtIndexFromLocalWishlist(int index) {
    localWishlist.removeAt(index);
  }

  void updateLocalWishlistAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    localWishlist[index] = updateFn(_localWishlist[index]);
  }

  void insertAtIndexInLocalWishlist(int index, String value) {
    localWishlist.insert(index, value);
  }

  Map<String, DebugDataField> toDebugSerializableMap() => {
        'enableDarkMode': debugSerializeParam(
          enableDarkMode,
          ParamType.bool,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiAKGgoOZW5hYmxlRGFya01vZGUSCDdudDFsNWU0cgIIBVoOZW5hYmxlRGFya01vZGU=',
          name: 'bool',
          nullable: false,
        ),
        'LatLngList': debugSerializeParam(
          LatLngList,
          ParamType.LatLng,
          isList: true,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch4KFgoKTGF0TG5nTGlzdBIIMmtwc2UzZHVyBBICCA5aCkxhdExuZ0xpc3Q=',
          name: 'LatLng',
          nullable: false,
        ),
        'NYCLatLngList': debugSerializeParam(
          NYCLatLngList,
          ParamType.LatLng,
          isList: true,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiEKGQoNTllDTGF0TG5nTGlzdBIIYnFhcnFrcnJyBBICCA5aDU5ZQ0xhdExuZ0xpc3Q=',
          name: 'LatLng',
          nullable: false,
        ),
        'cartItems': debugSerializeParam(
          cartItems,
          ParamType.DataStruct,
          isList: true,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ci8KFQoJY2FydEl0ZW1zEghlaWVoOGF2aHIWEgIIFCoQEg4KBWl0ZW1zEgVvNGNpYVoJY2FydEl0ZW1z',
          name: 'items',
          nullable: false,
        ),
        'localWishlist': debugSerializeParam(
          localWishlist,
          ParamType.String,
          isList: true,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiEKGQoNbG9jYWxXaXNobGlzdBIIdzB1ZGdiMjlyBBICCANaDWxvY2FsV2lzaGxpc3Q=',
          name: 'String',
          nullable: false,
        )
      };
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
