import 'package:get/get.dart';

class ProductsData {
  int? status;
  String? message;
  Products? products;

  ProductsData({this.status, this.message, this.products});

  ProductsData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    products =
        json['products'] != null ? Products.fromJson(json['products']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (products != null) {
      data['products'] = products!.toJson();
    }
    return data;
  }
}

class Products {
  int? currentPage;
  List<Product>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  Products(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  Products.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Product>[];
      json['data'].forEach((v) {
        data!.add(Product.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_page'] = currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}

class Product {
  int? id;
  int? storeId;
  dynamic subStoreId;
  String? storeItemId;
  String? name;
  dynamic kitchenLabel;
  int? categoryId;
  int? subcategoryId;
  dynamic brandId;
  dynamic productCode;
  String? coverImage;
  String? videoUrl;
  dynamic tags;
  dynamic shortDescription;
  String? description;
  String? price;
  int? wp1;
  double? wp2;
  double? offerPrice;
  String? offerLabel;
  dynamic priceNote;
  int? unitId;
  int? maxQty;
  int? available;
  int? popular;
  bool? looseAvailable;
  dynamic barcode;
  int? sequence;
  int? deliveryCharge;
  String? deliveryChargeType;
  int? inventoryStock;
  int? tax;
  int? hidePrice;
  int? considerPrice;
  int? isService;
  Settings? settings;
  List<dynamic>? filterProperties;
  int? isCombo;
  int? hasComplementary;
  int? maxComplementaryQty;
  List<dynamic>? variant;
  List<dynamic>? availableVariants;
  String? cardStyle;
  int? active;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  dynamic sectionId;
  dynamic productRatingsAvgRating;
  dynamic brand;
  List<Addons>? addons;
  List<ProductOptions>? productOptions;
  List<ProductImages>? productImages;
  List<dynamic>? unitQuantities;
  List<Categories>? categories;
  Unit? unit;
  List<dynamic>? complementaryProducts;
  double? taxCalc;
  double? totalPrice;
  double? priceTaxed;
  RxInt quantity = RxInt(0); // New property

  Product({
    this.id,
    this.storeId,
    this.subStoreId,
    this.storeItemId,
    this.name,
    this.kitchenLabel,
    this.categoryId,
    this.subcategoryId,
    this.brandId,
    this.productCode,
    this.coverImage,
    this.videoUrl,
    this.tags,
    this.shortDescription,
    this.description,
    this.price,
    this.wp1,
    this.wp2,
    this.offerPrice,
    this.offerLabel,
    this.priceNote,
    this.unitId,
    this.maxQty,
    this.available,
    this.popular,
    this.looseAvailable,
    this.barcode,
    this.sequence,
    this.deliveryCharge,
    this.deliveryChargeType,
    this.inventoryStock,
    this.tax,
    this.hidePrice,
    this.considerPrice,
    this.isService,
    this.settings,
    this.filterProperties,
    this.isCombo,
    this.hasComplementary,
    this.maxComplementaryQty,
    this.variant,
    this.availableVariants,
    this.cardStyle,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.sectionId,
    this.productRatingsAvgRating,
    this.brand,
    this.addons,
    this.productOptions,
    this.productImages,
    this.unitQuantities,
    this.categories,
    this.unit,
    this.complementaryProducts,
    this.taxCalc,
    this.totalPrice,
    this.priceTaxed,
    required this.quantity,
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    coverImage = json['cover_image'];
    description = json['description'];
    price = json['price'].toString();
    maxQty = json['max_qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    return data;
  }
}

class NameLanguage {
  String? ml;
  String? ar;

  NameLanguage({this.ml, this.ar});

  NameLanguage.fromJson(Map<String, dynamic> json) {
    ml = json['Ml'];
    ar = json['Ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Ml'] = ml;
    return data;
  }
}

class ShortDescriptionLanguage {
  Null? ml;

  ShortDescriptionLanguage({this.ml});

  ShortDescriptionLanguage.fromJson(Map<String, dynamic> json) {
    ml = json['Ml'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Ml'] = ml;
    return data;
  }
}

class Settings {
  int? bulkQtyAvailable;

  Settings({this.bulkQtyAvailable});

  Settings.fromJson(Map<String, dynamic> json) {
    bulkQtyAvailable = json['bulk_qty_available'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bulk_qty_available'] = bulkQtyAvailable;
    return data;
  }
}

class Addons {
  int? id;
  int? storeId;
  String? name;
  NameLanguage? nameLanguage;
  String? price;
  String? quantityType;
  int? active;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;
  double? taxCalc;
  double? totalPrice;

  Addons(
      {this.id,
      this.storeId,
      this.name,
      this.nameLanguage,
      this.price,
      this.quantityType,
      this.active,
      this.createdAt,
      this.updatedAt,
      this.pivot,
      this.taxCalc,
      this.totalPrice});

  Addons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['store_id'];
    name = json['name'];
    nameLanguage = json['name_language'] != null
        ? NameLanguage.fromJson(json['name_language'])
        : null;
    price = json['price'].toString();
    quantityType = json['quantity_type'];
    active = json['active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
    taxCalc = json['tax_calc'];
    totalPrice = json['total_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['store_id'] = storeId;
    data['name'] = name;
    if (nameLanguage != null) {
      data['name_language'] = nameLanguage!.toJson();
    }
    data['price'] = price;
    data['quantity_type'] = quantityType;
    data['active'] = active;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (pivot != null) {
      data['pivot'] = pivot!.toJson();
    }
    data['tax_calc'] = taxCalc;
    data['total_price'] = totalPrice;
    return data;
  }
}

class Pivot {
  int? productId;
  int? addonId;
  String? price;
  int? selectedDefault;
  String? createdAt;
  String? updatedAt;

  Pivot(
      {this.productId,
      this.addonId,
      this.price,
      this.selectedDefault,
      this.createdAt,
      this.updatedAt});

  Pivot.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    addonId = json['addon_id'];
    price = json['price'].toString();
    selectedDefault = json['selected_default'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_id'] = productId;
    data['addon_id'] = addonId;
    data['price'] = price;
    data['selected_default'] = selectedDefault;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class ProductOptions {
  int? id;
  int? productId;
  String? name;
  NameLanguage? nameLanguage;
  double? price;
  int? offerPrice;
  int? wp1;
  int? wp2;
  int? selectedDefault;
  String? createdAt;
  String? updatedAt;
  double? taxCalc;
  double? priceTaxed;
  double? totalPrice;

  ProductOptions(
      {this.id,
      this.productId,
      this.name,
      this.nameLanguage,
      this.price,
      this.offerPrice,
      this.wp1,
      this.wp2,
      this.selectedDefault,
      this.createdAt,
      this.updatedAt,
      this.taxCalc,
      this.priceTaxed,
      this.totalPrice});

  ProductOptions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    name = json['name'];
    nameLanguage = json['name_language'] != null
        ? NameLanguage.fromJson(json['name_language'])
        : null;
    price = json['price'];
    offerPrice = json['offer_price'];
    wp1 = json['wp_1'];
    wp2 = json['wp_2'];
    selectedDefault = json['selected_default'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    taxCalc = json['tax_calc'];
    priceTaxed = json['price_taxed'];
    totalPrice = json['total_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product_id'] = productId;
    data['name'] = name;
    if (nameLanguage != null) {
      data['name_language'] = nameLanguage!.toJson();
    }
    data['price'] = price;
    data['offer_price'] = offerPrice;
    data['wp_1'] = wp1;
    data['wp_2'] = wp2;
    data['selected_default'] = selectedDefault;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['tax_calc'] = taxCalc;
    data['price_taxed'] = priceTaxed;
    data['total_price'] = totalPrice;
    return data;
  }
}

class ProductImages {
  int? id;
  int? productId;
  String? image;
  int? sequence;
  String? createdAt;
  String? updatedAt;

  ProductImages(
      {this.id,
      this.productId,
      this.image,
      this.sequence,
      this.createdAt,
      this.updatedAt});

  ProductImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    image = json['image'];
    sequence = json['sequence'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product_id'] = productId;
    data['image'] = image;
    data['sequence'] = sequence;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Categories {
  int? id;
  int? storeId;
  int? parentId;
  String? name;
  NameLanguage? nameLanguage;
  String? image;
  int? sequence;
  String? timeFrom;
  String? timeTo;
  List<dynamic>? filterProperties;
  int? level;
  int? active;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;

  Categories(
      {this.id,
      this.storeId,
      this.parentId,
      this.name,
      this.nameLanguage,
      this.image,
      this.sequence,
      this.timeFrom,
      this.timeTo,
      this.filterProperties,
      this.level,
      this.active,
      this.createdAt,
      this.updatedAt,
      this.pivot});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['store_id'];
    parentId = json['parent_id'];
    name = json['name'];
    nameLanguage = json['name_language'] != null
        ? NameLanguage.fromJson(json['name_language'])
        : null;
    image = json['image'];
    sequence = json['sequence'];
    timeFrom = json['time_from'];
    timeTo = json['time_to'];
    if (json['filter_properties'] != null) {
      filterProperties = <Null>[];
    }
    level = json['level'];
    active = json['active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['store_id'] = storeId;
    data['parent_id'] = parentId;
    data['name'] = name;
    if (nameLanguage != null) {
      data['name_language'] = nameLanguage!.toJson();
    }
    data['image'] = image;
    data['sequence'] = sequence;
    data['time_from'] = timeFrom;
    data['time_to'] = timeTo;
    if (filterProperties != null) {
      data['filter_properties'] =
          filterProperties!.map((v) => v.toJson()).toList();
    }
    data['level'] = level;
    data['active'] = active;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (pivot != null) {
      data['pivot'] = pivot!.toJson();
    }
    return data;
  }
}

class Unit {
  int? id;
  int? storeId;
  String? name;
  String? shortForm;
  ShortFormLanguage? shortFormLanguage;
  String? type;
  int? active;
  String? createdAt;
  String? updatedAt;
  int? selectedDefault;

  Unit(
      {this.id,
      this.storeId,
      this.name,
      this.shortForm,
      this.shortFormLanguage,
      this.type,
      this.active,
      this.createdAt,
      this.updatedAt,
      this.selectedDefault});

  Unit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['store_id'];
    name = json['name'];
    shortForm = json['short_form'];
    shortFormLanguage = json['short_form_language'] != null
        ? ShortFormLanguage.fromJson(json['short_form_language'])
        : null;
    type = json['type'];
    active = json['active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    selectedDefault = json['selected_default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['store_id'] = storeId;
    data['name'] = name;
    data['short_form'] = shortForm;
    if (shortFormLanguage != null) {
      data['short_form_language'] = shortFormLanguage!.toJson();
    }
    data['type'] = type;
    data['active'] = active;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['selected_default'] = selectedDefault;
    return data;
  }
}

class ShortFormLanguage {
  Null? ar;

  ShortFormLanguage({this.ar});

  ShortFormLanguage.fromJson(Map<String, dynamic> json) {
    ar = json['Ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Ar'] = ar;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['label'] = label;
    data['active'] = active;
    return data;
  }
}
