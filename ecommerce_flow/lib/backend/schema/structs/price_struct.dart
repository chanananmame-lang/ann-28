// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PriceStruct extends FFFirebaseStruct {
  PriceStruct({
    String? currency,
    double? amount,
    double? discount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _currency = currency,
        _amount = amount,
        _discount = discount,
        super(firestoreUtilData);

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) {
    _currency = val;
    debugLog();
  }

  bool hasCurrency() => _currency != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) {
    _amount = val;
    debugLog();
  }

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) {
    _discount = val;
    debugLog();
  }

  void incrementDiscount(double amount) => discount = discount + amount;

  bool hasDiscount() => _discount != null;

  static PriceStruct fromMap(Map<String, dynamic> data) => PriceStruct(
        currency: data['currency'] as String?,
        amount: castToType<double>(data['amount']),
        discount: castToType<double>(data['discount']),
      );

  static PriceStruct? maybeFromMap(dynamic data) =>
      data is Map ? PriceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'currency': _currency,
        'amount': _amount,
        'discount': _discount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
      }.withoutNulls;

  static PriceStruct fromSerializableMap(Map<String, dynamic> data) =>
      PriceStruct(
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'currency': debugSerializeParam(
          currency,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'amount': debugSerializeParam(
          amount,
          ParamType.double,
          name: 'double',
          nullable: false,
        ),
        'discount': debugSerializeParam(
          discount,
          ParamType.double,
          name: 'double',
          nullable: false,
        ),
      };

  @override
  String toString() => 'PriceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PriceStruct &&
        currency == other.currency &&
        amount == other.amount &&
        discount == other.discount;
  }

  @override
  int get hashCode => const ListEquality().hash([currency, amount, discount]);
}

PriceStruct createPriceStruct({
  String? currency,
  double? amount,
  double? discount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PriceStruct(
      currency: currency,
      amount: amount,
      discount: discount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PriceStruct? updatePriceStruct(
  PriceStruct? price, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    price
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPriceStructData(
  Map<String, dynamic> firestoreData,
  PriceStruct? price,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (price == null) {
    return;
  }
  if (price.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && price.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final priceData = getPriceFirestoreData(price, forFieldValue);
  final nestedData = priceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = price.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPriceFirestoreData(
  PriceStruct? price, [
  bool forFieldValue = false,
]) {
  if (price == null) {
    return {};
  }
  final firestoreData = mapToFirestore(price.toMap());

  // Add any Firestore field values
  price.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPriceListFirestoreData(
  List<PriceStruct>? prices,
) =>
    prices?.map((e) => getPriceFirestoreData(e, true)).toList() ?? [];
