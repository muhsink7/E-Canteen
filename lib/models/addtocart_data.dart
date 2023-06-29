class AddToCartData {
  int? status;
  String? message;
  Order? order;

  AddToCartData({this.status, this.message, this.order});

  AddToCartData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    order = json['order'] != null ? Order.fromJson(json['order']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (order != null) {
      data['order'] = order!.toJson();
    }
    return data;
  }
}

class Order {
  int? id;
  int? storeId;
  Null? subStoreId;
  Null? userId;
  int? storeCustomerId;
  Null? storeTableId;
  Null? waiterId;
  Null? denzoUserId;
  int? orderNo;
  Null? name;
  Null? contactNumber;
  Null? deliveryAddress;
  Null? streetNo;
  Null? country;
  Null? city;
  Null? gpsLocation;
  Null? distanceFromStore;
  String? orderType;
  Null? orderNote;
  Null? confirmedAt;
  Null? dispatchedAt;
  int? priceVerified;
  int? subtotal;
  int? deliveryCharge;
  Null? deliveryTrackingId;
  Null? paymentRefId;
  Null? paymentStatus;
  int? receivedAmount;
  int? taxAmount;
  int? discountPercent;
  int? discount;
  int? grandTotal;
  int? balanceAmount;
  int? isOnline;
  int? isOutdoor;
  String? paymentMode;
  String? offlinePaymentOption;
  Null? vehicleNo;
  Null? couponId;
  int? couponDiscount;
  Null? loyaltyCardId;
  int? loyaltyCardDiscount;
  Null? deliveryDateTime;
  Null? deliveryAreaId;
  Null? createdBy;
  Null? salesAgentId;
  Null? multiCustomers;
  Null? multiPayments;
  String? status;
  Null? cancelType;
  Null? cancelReason;
  Null? editedAt;
  Null? cancelledBy;
  Null? editedBy;
  Null? dayEndId;
  Null? tokenNo;
  int? noOfPeople;
  int? orderItemsCount;
  String? createdAt;
  String? updatedAt;
  Null? deliveryBy;
  List<OrderItems>? orderItems;
  List<Null>? extraOrderItems;

  Order(
      {this.id,
        this.storeId,
        this.subStoreId,
        this.userId,
        this.storeCustomerId,
        this.storeTableId,
        this.waiterId,
        this.denzoUserId,
        this.orderNo,
        this.name,
        this.contactNumber,
        this.deliveryAddress,
        this.streetNo,
        this.country,
        this.city,
        this.gpsLocation,
        this.distanceFromStore,
        this.orderType,
        this.orderNote,
        this.confirmedAt,
        this.dispatchedAt,
        this.priceVerified,
        this.subtotal,
        this.deliveryCharge,
        this.deliveryTrackingId,
        this.paymentRefId,
        this.paymentStatus,
        this.receivedAmount,
        this.taxAmount,
        this.discountPercent,
        this.discount,
        this.grandTotal,
        this.balanceAmount,
        this.isOnline,
        this.isOutdoor,
        this.paymentMode,
        this.offlinePaymentOption,
        this.vehicleNo,
        this.couponId,
        this.couponDiscount,
        this.loyaltyCardId,
        this.loyaltyCardDiscount,
        this.deliveryDateTime,
        this.deliveryAreaId,
        this.createdBy,
        this.salesAgentId,
        this.multiCustomers,
        this.multiPayments,
        this.status,
        this.cancelType,
        this.cancelReason,
        this.editedAt,
        this.cancelledBy,
        this.editedBy,
        this.dayEndId,
        this.tokenNo,
        this.noOfPeople,
        this.orderItemsCount,
        this.createdAt,
        this.updatedAt,
        this.deliveryBy,
        this.orderItems,
        this.extraOrderItems});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['store_id'];
    subStoreId = json['sub_store_id'];
    userId = json['user_id'];
    storeCustomerId = json['store_customer_id'];
    storeTableId = json['store_table_id'];
    waiterId = json['waiter_id'];
    denzoUserId = json['denzo_user_id'];
    orderNo = json['order_no'];
    name = json['name'];
    contactNumber = json['contact_number'];
    deliveryAddress = json['delivery_address'];
    streetNo = json['street_no'];
    country = json['country'];
    city = json['city'];
    gpsLocation = json['gps_location'];
    distanceFromStore = json['distance_from_store'];
    orderType = json['order_type'];
    orderNote = json['order_note'];
    confirmedAt = json['confirmed_at'];
    dispatchedAt = json['dispatched_at'];
    priceVerified = json['price_verified'];
    subtotal = json['subtotal'];
    deliveryCharge = json['delivery_charge'];
    deliveryTrackingId = json['delivery_tracking_id'];
    paymentRefId = json['payment_ref_id'];
    paymentStatus = json['payment_status'];
    receivedAmount = json['received_amount'];
    taxAmount = json['tax_amount'];
    discountPercent = json['discount_percent'];
    discount = json['discount'];
    grandTotal = json['grand_total'];
    balanceAmount = json['balance_amount'];
    isOnline = json['is_online'];
    isOutdoor = json['is_outdoor'];
    paymentMode = json['payment_mode'];
    offlinePaymentOption = json['offline_payment_option'];
    vehicleNo = json['vehicle_no'];
    couponId = json['coupon_id'];
    couponDiscount = json['coupon_discount'];
    loyaltyCardId = json['loyalty_card_id'];
    loyaltyCardDiscount = json['loyalty_card_discount'];
    deliveryDateTime = json['delivery_date_time'];
    deliveryAreaId = json['delivery_area_id'];
    createdBy = json['created_by'];
    salesAgentId = json['sales_agent_id'];
    multiCustomers = json['multi_customers'];
    multiPayments = json['multi_payments'];
    status = json['status'];
    cancelType = json['cancel_type'];
    cancelReason = json['cancel_reason'];
    editedAt = json['edited_at'];
    cancelledBy = json['cancelled_by'];
    editedBy = json['edited_by'];
    dayEndId = json['day_end_id'];
    tokenNo = json['token_no'];
    noOfPeople = json['no_of_people'];
    orderItemsCount = json['order_items_count'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deliveryBy = json['delivery_by'];
    if (json['order_items'] != null) {
      orderItems = <OrderItems>[];
      json['order_items'].forEach((v) {
        orderItems!.add(OrderItems.fromJson(v));
      });
    }

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['store_id'] = storeId;
    data['sub_store_id'] = subStoreId;
    data['user_id'] = userId;
    data['store_customer_id'] = storeCustomerId;
    data['store_table_id'] = storeTableId;
    data['waiter_id'] = waiterId;
    data['denzo_user_id'] = denzoUserId;
    data['order_no'] = orderNo;
    data['name'] = name;
    data['contact_number'] = contactNumber;
    data['delivery_address'] = deliveryAddress;
    data['street_no'] = streetNo;
    data['country'] = country;
    data['city'] = city;
    data['gps_location'] = gpsLocation;
    data['distance_from_store'] = distanceFromStore;
    data['order_type'] = orderType;
    data['order_note'] = orderNote;
    data['confirmed_at'] = confirmedAt;
    data['dispatched_at'] = dispatchedAt;
    data['price_verified'] = priceVerified;
    data['subtotal'] = subtotal;
    data['delivery_charge'] = deliveryCharge;
    data['delivery_tracking_id'] = deliveryTrackingId;
    data['payment_ref_id'] = paymentRefId;
    data['payment_status'] = paymentStatus;
    data['received_amount'] = receivedAmount;
    data['tax_amount'] = taxAmount;
    data['discount_percent'] = discountPercent;
    data['discount'] = discount;
    data['grand_total'] = grandTotal;
    data['balance_amount'] = balanceAmount;
    data['is_online'] = isOnline;
    data['is_outdoor'] = isOutdoor;
    data['payment_mode'] = paymentMode;
    data['offline_payment_option'] = offlinePaymentOption;
    data['vehicle_no'] = vehicleNo;
    data['coupon_id'] = couponId;
    data['coupon_discount'] = couponDiscount;
    data['loyalty_card_id'] = loyaltyCardId;
    data['loyalty_card_discount'] = loyaltyCardDiscount;
    data['delivery_date_time'] = deliveryDateTime;
    data['delivery_area_id'] = deliveryAreaId;
    data['created_by'] = createdBy;
    data['sales_agent_id'] = salesAgentId;
    data['multi_customers'] = multiCustomers;
    data['multi_payments'] = multiPayments;
    data['status'] = status;
    data['cancel_type'] = cancelType;
    data['cancel_reason'] = cancelReason;
    data['edited_at'] = editedAt;
    data['cancelled_by'] = cancelledBy;
    data['edited_by'] = editedBy;
    data['day_end_id'] = dayEndId;
    data['token_no'] = tokenNo;
    data['no_of_people'] = noOfPeople;
    data['order_items_count'] = orderItemsCount;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['delivery_by'] = deliveryBy;
    if (orderItems != null) {
      data['order_items'] = orderItems!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class OrderItems {
  int? id;
  int? orderId;
  int? productId;

  double? unitPrice;
  int? quantity;
  double? price;

  double? totalPrice;

  Product? product;

  OrderItems(
      {this.id,
        this.orderId,
        this.productId,

        this.unitPrice,
        this.quantity,
        this.price,

        this.totalPrice,

        this.product,
        });

  OrderItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['order_id'];
    productId = json['product_id'];


    unitPrice = json['unit_price'];
    quantity = json['quantity'];
    price = json['price'];

    totalPrice = json['total_price'];

    product =
    json['product'] != null ? Product.fromJson(json['product']) : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['order_id'] = orderId;
    data['product_id'] = productId;

    data['unit_price'] = unitPrice;
    data['quantity'] = quantity;
    data['price'] = price;

    data['total_price'] = totalPrice;


    if (product != null) {
      data['product'] = product!.toJson();
    }

    return data;
  }
}

class Product {
  int? id;
  int? storeId;
  Null? subStoreId;
  String? storeItemId;
  String? name;
  NameLanguage? nameLanguage;
  Null? kitchenLabel;
  int? categoryId;
  Null? subcategoryId;
  Null? brandId;
  Null? productCode;
  String? coverImage;
  String? videoUrl;
  Null? tags;
  Null? shortDescription;
  ShortDescriptionLanguage? shortDescriptionLanguage;
  Null? description;
  NameLanguage? descriptionLanguage;
  double? price;
  Null? wp1;
  Null? wp2;
  double? offerPrice;
  Null? offerLabel;
  NameLanguage? offerLabelLanguage;
  Null? priceNote;
  int? unitId;
  int? maxQty;
  int? available;
  int? popular;
  bool? looseAvailable;
  Null? barcode;
  int? sequence;
  Null? deliveryCharge;
  String? deliveryChargeType;
  int? inventoryStock;
  int? tax;
  int? hidePrice;
  int? considerPrice;
  int? isService;
  Settings? settings;
  List<Null>? filterProperties;
  int? isCombo;
  int? hasComplementary;
  int? maxComplementaryQty;
  List<Null>? variant;
  List<Null>? availableVariants;
  String? cardStyle;
  int? active;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  Null? sectionId;
  List<Null>? comboProducts;
  List<Addons>? addons;
  List<ProductOptions>? productOptions;
  double? taxCalc;
  double? totalPrice;
  double? priceTaxed;
  List<int>? cates;

  Product(
      {this.id,
        this.storeId,
        this.subStoreId,
        this.storeItemId,
        this.name,
        this.nameLanguage,
        this.kitchenLabel,
        this.categoryId,
        this.subcategoryId,
        this.brandId,
        this.productCode,
        this.coverImage,
        this.videoUrl,
        this.tags,
        this.shortDescription,
        this.shortDescriptionLanguage,
        this.description,
        this.descriptionLanguage,
        this.price,
        this.wp1,
        this.wp2,
        this.offerPrice,
        this.offerLabel,
        this.offerLabelLanguage,
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
        this.comboProducts,
        this.addons,
        this.productOptions,
        this.taxCalc,
        this.totalPrice,
        this.priceTaxed,
        this.cates});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['store_id'];
    subStoreId = json['sub_store_id'];
    storeItemId = json['store_item_id'];
    name = json['name'];
    nameLanguage = json['name_language'] != null
        ? NameLanguage.fromJson(json['name_language'])
        : null;
    kitchenLabel = json['kitchen_label'];
    categoryId = json['category_id'];
    subcategoryId = json['subcategory_id'];
    brandId = json['brand_id'];
    productCode = json['product_code'];
    coverImage = json['cover_image'];
    videoUrl = json['video_url'];
    tags = json['tags'];
    shortDescription = json['short_description'];
    shortDescriptionLanguage = json['short_description_language'] != null
        ? ShortDescriptionLanguage.fromJson(
        json['short_description_language'])
        : null;
    description = json['description'];
    descriptionLanguage = json['description_language'] != null
        ? NameLanguage.fromJson(json['description_language'])
        : null;
    price = json['price'];
    wp1 = json['wp_1'];
    wp2 = json['wp_2'];
    offerPrice = json['offer_price'];
    offerLabel = json['offer_label'];
    offerLabelLanguage = json['offer_label_language'] != null
        ? NameLanguage.fromJson(json['offer_label_language'])
        : null;
    priceNote = json['price_note'];
    unitId = json['unit_id'];
    maxQty = json['max_qty'];
    available = json['available'];
    popular = json['popular'];
    looseAvailable = json['loose_available'];
    barcode = json['barcode'];
    sequence = json['sequence'];
    deliveryCharge = json['delivery_charge'];
    deliveryChargeType = json['delivery_charge_type'];
    inventoryStock = json['inventory_stock'];
    tax = json['tax'];
    hidePrice = json['hide_price'];
    considerPrice = json['consider_price'];
    isService = json['is_service'];
    settings = json['settings'] != null
        ? Settings.fromJson(json['settings'])
        : null;

    isCombo = json['is_combo'];
    hasComplementary = json['has_complementary'];
    maxComplementaryQty = json['max_complementary_qty'];

    if (json['available_variants'] != null) {
      availableVariants = <Null>[];
      json['available_variants'].forEach((v) {
      });
    }
    cardStyle = json['card_style'];
    active = json['active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    sectionId = json['section_id'];
    if (json['combo_products'] != null) {
      comboProducts = <Null>[];
      json['combo_products'].forEach((v) {
      });
    }
    if (json['addons'] != null) {
      addons = <Addons>[];
      json['addons'].forEach((v) {
        addons!.add(Addons.fromJson(v));
      });
    }
    if (json['product_options'] != null) {
      productOptions = <ProductOptions>[];
      json['product_options'].forEach((v) {
        productOptions!.add(ProductOptions.fromJson(v));
      });
    }
    taxCalc = json['tax_calc'];
    totalPrice = json['total_price'];
    priceTaxed = json['price_taxed'];
    cates = json['cates'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['store_id'] = storeId;
    data['sub_store_id'] = subStoreId;
    data['store_item_id'] = storeItemId;
    data['name'] = name;
    if (nameLanguage != null) {
      data['name_language'] = nameLanguage!.toJson();
    }
    data['kitchen_label'] = kitchenLabel;
    data['category_id'] = categoryId;
    data['subcategory_id'] = subcategoryId;
    data['brand_id'] = brandId;
    data['product_code'] = productCode;
    data['cover_image'] = coverImage;
    data['video_url'] = videoUrl;
    data['tags'] = tags;
    data['short_description'] = shortDescription;
    if (shortDescriptionLanguage != null) {
      data['short_description_language'] =
          shortDescriptionLanguage!.toJson();
    }
    data['description'] = description;
    if (descriptionLanguage != null) {
      data['description_language'] = descriptionLanguage!.toJson();
    }
    data['price'] = price;
    data['wp_1'] = wp1;
    data['wp_2'] = wp2;
    data['offer_price'] = offerPrice;
    data['offer_label'] = offerLabel;
    if (offerLabelLanguage != null) {
      data['offer_label_language'] = offerLabelLanguage!.toJson();
    }
    data['price_note'] = priceNote;
    data['unit_id'] = unitId;
    data['max_qty'] = maxQty;
    data['available'] = available;
    data['popular'] = popular;
    data['loose_available'] = looseAvailable;
    data['barcode'] = barcode;
    data['sequence'] = sequence;
    data['delivery_charge'] = deliveryCharge;
    data['delivery_charge_type'] = deliveryChargeType;
    data['inventory_stock'] = inventoryStock;
    data['tax'] = tax;
    data['hide_price'] = hidePrice;
    data['consider_price'] = considerPrice;
    data['is_service'] = isService;
    if (settings != null) {
      data['settings'] = settings!.toJson();
    }

    data['is_combo'] = isCombo;
    data['has_complementary'] = hasComplementary;
    data['max_complementary_qty'] = maxComplementaryQty;


    data['card_style'] = cardStyle;
    data['active'] = active;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    data['section_id'] = sectionId;

    if (addons != null) {
      data['addons'] = addons!.map((v) => v.toJson()).toList();
    }
    if (productOptions != null) {
      data['product_options'] =
          productOptions!.map((v) => v.toJson()).toList();
    }
    data['tax_calc'] = taxCalc;
    data['total_price'] = totalPrice;
    data['price_taxed'] = priceTaxed;
    data['cates'] = cates;
    return data;
  }
}

class NameLanguage {
  String? ml;

  NameLanguage({this.ml});

  NameLanguage.fromJson(Map<String, dynamic> json) {
    ml = json['Ml'];
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
  double? price;
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
    price = json['price'];
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
  double? price;
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
    price = json['price'];
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