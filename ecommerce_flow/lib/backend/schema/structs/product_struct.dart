// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends FFFirebaseStruct {
  ProductStruct({
    String? productId,
    String? name,
    String? description,
    String? category,
    String? subCategory,
    PriceStruct? price,
    List<String>? sizes,
    List<ColorsStruct>? colors,
    List<ImagesStruct>? images,
    StockStatusStruct? stockStatus,
    List<ReviewsStruct>? reviews,
    double? ratingAverage,
    int? totalReviews,
    List<String>? tags,
    String? availability,
    String? launchDate,
    String? brand,
    String? material,
    String? careInstructions,
    String? returnPolicy,
    List<ShippingOptionStruct>? shippingOptions,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _name = name,
        _description = description,
        _category = category,
        _subCategory = subCategory,
        _price = price,
        _sizes = sizes != null ? LoggableList(sizes) : null,
        _colors = colors != null ? LoggableList(colors) : null,
        _images = images != null ? LoggableList(images) : null,
        _stockStatus = stockStatus,
        _reviews = reviews != null ? LoggableList(reviews) : null,
        _ratingAverage = ratingAverage,
        _totalReviews = totalReviews,
        _tags = tags != null ? LoggableList(tags) : null,
        _availability = availability,
        _launchDate = launchDate,
        _brand = brand,
        _material = material,
        _careInstructions = careInstructions,
        _returnPolicy = returnPolicy,
        _shippingOptions =
            shippingOptions != null ? LoggableList(shippingOptions) : null,
        super(firestoreUtilData);

  // "productId" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) {
    _productId = val;
    debugLog();
  }

  bool hasProductId() => _productId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) {
    _name = val;
    debugLog();
  }

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) {
    _description = val;
    debugLog();
  }

  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) {
    _category = val;
    debugLog();
  }

  bool hasCategory() => _category != null;

  // "subCategory" field.
  String? _subCategory;
  String get subCategory => _subCategory ?? '';
  set subCategory(String? val) {
    _subCategory = val;
    debugLog();
  }

  bool hasSubCategory() => _subCategory != null;

  // "price" field.
  PriceStruct? _price;
  PriceStruct get price => (_price ?? PriceStruct())..logger = logger;
  set price(PriceStruct? val) {
    _price = val;
    debugLog();
  }

  void updatePrice(Function(PriceStruct) updateFn) {
    updateFn(_price ??= PriceStruct());
    debugLog();
  }

  bool hasPrice() => _price != null;

  // "sizes" field.
  LoggableList<String>? _sizes;
  List<String> get sizes => (_sizes ?? LoggableList(const []))..logger = logger;
  set sizes(List<String>? val) {
    if (val != null) {
      _sizes = LoggableList(val);
    } else {
      _sizes = null;
    }
    debugLog();
  }

  void updateSizes(Function(List<String>) updateFn) {
    updateFn(_sizes ??= LoggableList([]));
    debugLog();
  }

  bool hasSizes() => _sizes != null;

  // "colors" field.
  LoggableList<ColorsStruct>? _colors;
  List<ColorsStruct> get colors =>
      (_colors ?? LoggableList(const []))..logger = logger;
  set colors(List<ColorsStruct>? val) {
    if (val != null) {
      _colors = LoggableList(val);
    } else {
      _colors = null;
    }
    debugLog();
  }

  void updateColors(Function(List<ColorsStruct>) updateFn) {
    updateFn(_colors ??= LoggableList([]));
    debugLog();
  }

  bool hasColors() => _colors != null;

  // "images" field.
  LoggableList<ImagesStruct>? _images;
  List<ImagesStruct> get images =>
      (_images ?? LoggableList(const []))..logger = logger;
  set images(List<ImagesStruct>? val) {
    if (val != null) {
      _images = LoggableList(val);
    } else {
      _images = null;
    }
    debugLog();
  }

  void updateImages(Function(List<ImagesStruct>) updateFn) {
    updateFn(_images ??= LoggableList([]));
    debugLog();
  }

  bool hasImages() => _images != null;

  // "stockStatus" field.
  StockStatusStruct? _stockStatus;
  StockStatusStruct get stockStatus =>
      (_stockStatus ?? StockStatusStruct())..logger = logger;
  set stockStatus(StockStatusStruct? val) {
    _stockStatus = val;
    debugLog();
  }

  void updateStockStatus(Function(StockStatusStruct) updateFn) {
    updateFn(_stockStatus ??= StockStatusStruct());
    debugLog();
  }

  bool hasStockStatus() => _stockStatus != null;

  // "reviews" field.
  LoggableList<ReviewsStruct>? _reviews;
  List<ReviewsStruct> get reviews =>
      (_reviews ?? LoggableList(const []))..logger = logger;
  set reviews(List<ReviewsStruct>? val) {
    if (val != null) {
      _reviews = LoggableList(val);
    } else {
      _reviews = null;
    }
    debugLog();
  }

  void updateReviews(Function(List<ReviewsStruct>) updateFn) {
    updateFn(_reviews ??= LoggableList([]));
    debugLog();
  }

  bool hasReviews() => _reviews != null;

  // "ratingAverage" field.
  double? _ratingAverage;
  double get ratingAverage => _ratingAverage ?? 0.0;
  set ratingAverage(double? val) {
    _ratingAverage = val;
    debugLog();
  }

  void incrementRatingAverage(double amount) =>
      ratingAverage = ratingAverage + amount;

  bool hasRatingAverage() => _ratingAverage != null;

  // "totalReviews" field.
  int? _totalReviews;
  int get totalReviews => _totalReviews ?? 0;
  set totalReviews(int? val) {
    _totalReviews = val;
    debugLog();
  }

  void incrementTotalReviews(int amount) =>
      totalReviews = totalReviews + amount;

  bool hasTotalReviews() => _totalReviews != null;

  // "tags" field.
  LoggableList<String>? _tags;
  List<String> get tags => (_tags ?? LoggableList(const []))..logger = logger;
  set tags(List<String>? val) {
    if (val != null) {
      _tags = LoggableList(val);
    } else {
      _tags = null;
    }
    debugLog();
  }

  void updateTags(Function(List<String>) updateFn) {
    updateFn(_tags ??= LoggableList([]));
    debugLog();
  }

  bool hasTags() => _tags != null;

  // "availability" field.
  String? _availability;
  String get availability => _availability ?? '';
  set availability(String? val) {
    _availability = val;
    debugLog();
  }

  bool hasAvailability() => _availability != null;

  // "launchDate" field.
  String? _launchDate;
  String get launchDate => _launchDate ?? '';
  set launchDate(String? val) {
    _launchDate = val;
    debugLog();
  }

  bool hasLaunchDate() => _launchDate != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) {
    _brand = val;
    debugLog();
  }

  bool hasBrand() => _brand != null;

  // "material" field.
  String? _material;
  String get material => _material ?? '';
  set material(String? val) {
    _material = val;
    debugLog();
  }

  bool hasMaterial() => _material != null;

  // "careInstructions" field.
  String? _careInstructions;
  String get careInstructions => _careInstructions ?? '';
  set careInstructions(String? val) {
    _careInstructions = val;
    debugLog();
  }

  bool hasCareInstructions() => _careInstructions != null;

  // "returnPolicy" field.
  String? _returnPolicy;
  String get returnPolicy => _returnPolicy ?? '';
  set returnPolicy(String? val) {
    _returnPolicy = val;
    debugLog();
  }

  bool hasReturnPolicy() => _returnPolicy != null;

  // "shippingOptions" field.
  LoggableList<ShippingOptionStruct>? _shippingOptions;
  List<ShippingOptionStruct> get shippingOptions =>
      (_shippingOptions ?? LoggableList(const []))..logger = logger;
  set shippingOptions(List<ShippingOptionStruct>? val) {
    if (val != null) {
      _shippingOptions = LoggableList(val);
    } else {
      _shippingOptions = null;
    }
    debugLog();
  }

  void updateShippingOptions(Function(List<ShippingOptionStruct>) updateFn) {
    updateFn(_shippingOptions ??= LoggableList([]));
    debugLog();
  }

  bool hasShippingOptions() => _shippingOptions != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        productId: data['productId'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        category: data['category'] as String?,
        subCategory: data['subCategory'] as String?,
        price: PriceStruct.maybeFromMap(data['price']),
        sizes: getDataList(data['sizes']),
        colors: getStructList(
          data['colors'],
          ColorsStruct.fromMap,
        ),
        images: getStructList(
          data['images'],
          ImagesStruct.fromMap,
        ),
        stockStatus: StockStatusStruct.maybeFromMap(data['stockStatus']),
        reviews: getStructList(
          data['reviews'],
          ReviewsStruct.fromMap,
        ),
        ratingAverage: castToType<double>(data['ratingAverage']),
        totalReviews: castToType<int>(data['totalReviews']),
        tags: getDataList(data['tags']),
        availability: data['availability'] as String?,
        launchDate: data['launchDate'] as String?,
        brand: data['brand'] as String?,
        material: data['material'] as String?,
        careInstructions: data['careInstructions'] as String?,
        returnPolicy: data['returnPolicy'] as String?,
        shippingOptions: getStructList(
          data['shippingOptions'],
          ShippingOptionStruct.fromMap,
        ),
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'productId': _productId,
        'name': _name,
        'description': _description,
        'category': _category,
        'subCategory': _subCategory,
        'price': _price?.toMap(),
        'sizes': _sizes,
        'colors': _colors?.map((e) => e.toMap()).toList(),
        'images': _images?.map((e) => e.toMap()).toList(),
        'stockStatus': _stockStatus?.toMap(),
        'reviews': _reviews?.map((e) => e.toMap()).toList(),
        'ratingAverage': _ratingAverage,
        'totalReviews': _totalReviews,
        'tags': _tags,
        'availability': _availability,
        'launchDate': _launchDate,
        'brand': _brand,
        'material': _material,
        'careInstructions': _careInstructions,
        'returnPolicy': _returnPolicy,
        'shippingOptions': _shippingOptions?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productId': serializeParam(
          _productId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'subCategory': serializeParam(
          _subCategory,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.DataStruct,
        ),
        'sizes': serializeParam(
          _sizes,
          ParamType.String,
          isList: true,
        ),
        'colors': serializeParam(
          _colors,
          ParamType.DataStruct,
          isList: true,
        ),
        'images': serializeParam(
          _images,
          ParamType.DataStruct,
          isList: true,
        ),
        'stockStatus': serializeParam(
          _stockStatus,
          ParamType.DataStruct,
        ),
        'reviews': serializeParam(
          _reviews,
          ParamType.DataStruct,
          isList: true,
        ),
        'ratingAverage': serializeParam(
          _ratingAverage,
          ParamType.double,
        ),
        'totalReviews': serializeParam(
          _totalReviews,
          ParamType.int,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
          isList: true,
        ),
        'availability': serializeParam(
          _availability,
          ParamType.String,
        ),
        'launchDate': serializeParam(
          _launchDate,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'material': serializeParam(
          _material,
          ParamType.String,
        ),
        'careInstructions': serializeParam(
          _careInstructions,
          ParamType.String,
        ),
        'returnPolicy': serializeParam(
          _returnPolicy,
          ParamType.String,
        ),
        'shippingOptions': serializeParam(
          _shippingOptions,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        productId: deserializeParam(
          data['productId'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        subCategory: deserializeParam(
          data['subCategory'],
          ParamType.String,
          false,
        ),
        price: deserializeStructParam(
          data['price'],
          ParamType.DataStruct,
          false,
          structBuilder: PriceStruct.fromSerializableMap,
        ),
        sizes: deserializeParam<String>(
          data['sizes'],
          ParamType.String,
          true,
        ),
        colors: deserializeStructParam<ColorsStruct>(
          data['colors'],
          ParamType.DataStruct,
          true,
          structBuilder: ColorsStruct.fromSerializableMap,
        ),
        images: deserializeStructParam<ImagesStruct>(
          data['images'],
          ParamType.DataStruct,
          true,
          structBuilder: ImagesStruct.fromSerializableMap,
        ),
        stockStatus: deserializeStructParam(
          data['stockStatus'],
          ParamType.DataStruct,
          false,
          structBuilder: StockStatusStruct.fromSerializableMap,
        ),
        reviews: deserializeStructParam<ReviewsStruct>(
          data['reviews'],
          ParamType.DataStruct,
          true,
          structBuilder: ReviewsStruct.fromSerializableMap,
        ),
        ratingAverage: deserializeParam(
          data['ratingAverage'],
          ParamType.double,
          false,
        ),
        totalReviews: deserializeParam(
          data['totalReviews'],
          ParamType.int,
          false,
        ),
        tags: deserializeParam<String>(
          data['tags'],
          ParamType.String,
          true,
        ),
        availability: deserializeParam(
          data['availability'],
          ParamType.String,
          false,
        ),
        launchDate: deserializeParam(
          data['launchDate'],
          ParamType.String,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        material: deserializeParam(
          data['material'],
          ParamType.String,
          false,
        ),
        careInstructions: deserializeParam(
          data['careInstructions'],
          ParamType.String,
          false,
        ),
        returnPolicy: deserializeParam(
          data['returnPolicy'],
          ParamType.String,
          false,
        ),
        shippingOptions: deserializeStructParam<ShippingOptionStruct>(
          data['shippingOptions'],
          ParamType.DataStruct,
          true,
          structBuilder: ShippingOptionStruct.fromSerializableMap,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'productId': debugSerializeParam(
          productId,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'name': debugSerializeParam(
          name,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'description': debugSerializeParam(
          description,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'category': debugSerializeParam(
          category,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'subCategory': debugSerializeParam(
          subCategory,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'price': debugSerializeParam(
          _price,
          ParamType.DataStruct,
          name: 'price',
          nullable: false,
        ),
        'sizes': debugSerializeParam(
          _sizes,
          ParamType.String,
          isList: true,
          name: 'String',
          nullable: false,
        ),
        'colors': debugSerializeParam(
          _colors,
          ParamType.DataStruct,
          isList: true,
          name: 'colors',
          nullable: false,
        ),
        'images': debugSerializeParam(
          _images,
          ParamType.DataStruct,
          isList: true,
          name: 'images',
          nullable: false,
        ),
        'stockStatus': debugSerializeParam(
          _stockStatus,
          ParamType.DataStruct,
          name: 'stockStatus',
          nullable: false,
        ),
        'reviews': debugSerializeParam(
          _reviews,
          ParamType.DataStruct,
          isList: true,
          name: 'reviews',
          nullable: false,
        ),
        'ratingAverage': debugSerializeParam(
          ratingAverage,
          ParamType.double,
          name: 'double',
          nullable: false,
        ),
        'totalReviews': debugSerializeParam(
          totalReviews,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'tags': debugSerializeParam(
          _tags,
          ParamType.String,
          isList: true,
          name: 'String',
          nullable: false,
        ),
        'availability': debugSerializeParam(
          availability,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'launchDate': debugSerializeParam(
          launchDate,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'brand': debugSerializeParam(
          brand,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'material': debugSerializeParam(
          material,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'careInstructions': debugSerializeParam(
          careInstructions,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'returnPolicy': debugSerializeParam(
          returnPolicy,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'shippingOptions': debugSerializeParam(
          _shippingOptions,
          ParamType.DataStruct,
          isList: true,
          name: 'shippingOption',
          nullable: false,
        ),
      };

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductStruct &&
        productId == other.productId &&
        name == other.name &&
        description == other.description &&
        category == other.category &&
        subCategory == other.subCategory &&
        price == other.price &&
        listEquality.equals(sizes, other.sizes) &&
        listEquality.equals(colors, other.colors) &&
        listEquality.equals(images, other.images) &&
        stockStatus == other.stockStatus &&
        listEquality.equals(reviews, other.reviews) &&
        ratingAverage == other.ratingAverage &&
        totalReviews == other.totalReviews &&
        listEquality.equals(tags, other.tags) &&
        availability == other.availability &&
        launchDate == other.launchDate &&
        brand == other.brand &&
        material == other.material &&
        careInstructions == other.careInstructions &&
        returnPolicy == other.returnPolicy &&
        listEquality.equals(shippingOptions, other.shippingOptions);
  }

  @override
  int get hashCode => const ListEquality().hash([
        productId,
        name,
        description,
        category,
        subCategory,
        price,
        sizes,
        colors,
        images,
        stockStatus,
        reviews,
        ratingAverage,
        totalReviews,
        tags,
        availability,
        launchDate,
        brand,
        material,
        careInstructions,
        returnPolicy,
        shippingOptions
      ]);
}

ProductStruct createProductStruct({
  String? productId,
  String? name,
  String? description,
  String? category,
  String? subCategory,
  PriceStruct? price,
  StockStatusStruct? stockStatus,
  double? ratingAverage,
  int? totalReviews,
  String? availability,
  String? launchDate,
  String? brand,
  String? material,
  String? careInstructions,
  String? returnPolicy,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductStruct(
      productId: productId,
      name: name,
      description: description,
      category: category,
      subCategory: subCategory,
      price: price ?? (clearUnsetFields ? PriceStruct() : null),
      stockStatus:
          stockStatus ?? (clearUnsetFields ? StockStatusStruct() : null),
      ratingAverage: ratingAverage,
      totalReviews: totalReviews,
      availability: availability,
      launchDate: launchDate,
      brand: brand,
      material: material,
      careInstructions: careInstructions,
      returnPolicy: returnPolicy,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductStruct? updateProductStruct(
  ProductStruct? product, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    product
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductStructData(
  Map<String, dynamic> firestoreData,
  ProductStruct? product,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (product == null) {
    return;
  }
  if (product.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && product.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productData = getProductFirestoreData(product, forFieldValue);
  final nestedData = productData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = product.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductFirestoreData(
  ProductStruct? product, [
  bool forFieldValue = false,
]) {
  if (product == null) {
    return {};
  }
  final firestoreData = mapToFirestore(product.toMap());

  // Handle nested data for "price" field.
  addPriceStructData(
    firestoreData,
    product.hasPrice() ? product.price : null,
    'price',
    forFieldValue,
  );

  // Handle nested data for "stockStatus" field.
  addStockStatusStructData(
    firestoreData,
    product.hasStockStatus() ? product.stockStatus : null,
    'stockStatus',
    forFieldValue,
  );

  // Add any Firestore field values
  product.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductListFirestoreData(
  List<ProductStruct>? products,
) =>
    products?.map((e) => getProductFirestoreData(e, true)).toList() ?? [];
