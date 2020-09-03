class BookCategoryResponseModel {
  Category category;
  List<Products> products;

  BookCategoryResponseModel({this.category, this.products});

  BookCategoryResponseModel.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    if (json['products'] != null) {
      products = new List<Products>();
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Category {
  String categoryId;
  String parentId;
  String idPath;
  String level;
  String companyId;
  String usergroupIds;
  String status;
  String productCount;
  String position;
  String timestamp;
  String isOp;
  String localization;
  String ageVerification;
  String ageLimit;
  String parentAgeVerification;
  String parentAgeLimit;
  List<Null> selectedViews;
  String defaultView;
  String productDetailsView;
  String productColumns;
  String isTrash;
  String langCode;
  String category;
  String description;
  String metaKeywords;
  String metaDescription;
  String pageTitle;
  String ageWarningMessage;
  String seoName;
  String seoPath;
//  List<Null> selectedLayouts;
  String defaultLayout;
  String productDetailsLayout;
  String mainImage;

  Category(
      {this.categoryId,
        this.parentId,
        this.idPath,
        this.level,
        this.companyId,
        this.usergroupIds,
        this.status,
        this.productCount,
        this.position,
        this.timestamp,
        this.isOp,
        this.localization,
        this.ageVerification,
        this.ageLimit,
        this.parentAgeVerification,
        this.parentAgeLimit,
        this.selectedViews,
        this.defaultView,
        this.productDetailsView,
        this.productColumns,
        this.isTrash,
        this.langCode,
        this.category,
        this.description,
        this.metaKeywords,
        this.metaDescription,
        this.pageTitle,
        this.ageWarningMessage,
        this.seoName,
        this.seoPath,
//        this.selectedLayouts,
        this.defaultLayout,
        this.productDetailsLayout,
        this.mainImage});

  Category.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    parentId = json['parent_id'];
    idPath = json['id_path'];
    level = json['level'];
    companyId = json['company_id'];
    usergroupIds = json['usergroup_ids'];
    status = json['status'];
    productCount = json['product_count'];
    position = json['position'];
    timestamp = json['timestamp'];
    isOp = json['is_op'];
    localization = json['localization'];
    ageVerification = json['age_verification'];
    ageLimit = json['age_limit'];
    parentAgeVerification = json['parent_age_verification'];
    parentAgeLimit = json['parent_age_limit'];
   /* if (json['selected_views'] != null) {
      selectedViews = new List<Null>();
      json['selected_views'].forEach((v) {
        selectedViews.add(new Null.fromJson(v));
      });
    }*/
    defaultView = json['default_view'];
    productDetailsView = json['product_details_view'];
    productColumns = json['product_columns'];
    isTrash = json['is_trash'];
    langCode = json['lang_code'];
    category = json['category'];
    description = json['description'];
    metaKeywords = json['meta_keywords'];
    metaDescription = json['meta_description'];
    pageTitle = json['page_title'];
    ageWarningMessage = json['age_warning_message'];
    seoName = json['seo_name'];
    seoPath = json['seo_path'];
    /*if (json['selected_layouts'] != null) {
      selectedLayouts = new List<Null>();
      json['selected_layouts'].forEach((v) {
        selectedLayouts.add(new Null.fromJson(v));
      });
    }*/
    defaultLayout = json['default_layout'];
    productDetailsLayout = json['product_details_layout'];
    mainImage = json['main_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['parent_id'] = this.parentId;
    data['id_path'] = this.idPath;
    data['level'] = this.level;
    data['company_id'] = this.companyId;
    data['usergroup_ids'] = this.usergroupIds;
    data['status'] = this.status;
    data['product_count'] = this.productCount;
    data['position'] = this.position;
    data['timestamp'] = this.timestamp;
    data['is_op'] = this.isOp;
    data['localization'] = this.localization;
    data['age_verification'] = this.ageVerification;
    data['age_limit'] = this.ageLimit;
    data['parent_age_verification'] = this.parentAgeVerification;
    data['parent_age_limit'] = this.parentAgeLimit;
   /* if (this.selectedViews != null) {
      data['selected_views'] =
          this.selectedViews.map((v) => v.toJson()).toList();
    }*/
    data['default_view'] = this.defaultView;
    data['product_details_view'] = this.productDetailsView;
    data['product_columns'] = this.productColumns;
    data['is_trash'] = this.isTrash;
    data['lang_code'] = this.langCode;
    data['category'] = this.category;
    data['description'] = this.description;
    data['meta_keywords'] = this.metaKeywords;
    data['meta_description'] = this.metaDescription;
    data['page_title'] = this.pageTitle;
    data['age_warning_message'] = this.ageWarningMessage;
    data['seo_name'] = this.seoName;
    data['seo_path'] = this.seoPath;
   /* if (this.selectedLayouts != null) {
      data['selected_layouts'] =
          this.selectedLayouts.map((v) => v.toJson()).toList();
    }*/
    data['default_layout'] = this.defaultLayout;
    data['product_details_layout'] = this.productDetailsLayout;
    data['main_image'] = this.mainImage;
    return data;
  }
}

class Products {
  String productId;
  String product;
  String productCode;
  String productType;
  String status;
  String companyId;
  int listPrice;
  String amount;
  String weight;
  String length;
  String width;
  String height;
  String shippingFreight;
  String lowAvailLimit;
  String timestamp;
  String updatedTimestamp;
  String usergroupIds;
  String isEdp;
  String edpShipping;
  String unlimitedDownload;
  String tracking;
  String freeShipping;
  String zeroPriceAction;
  String isPbp;
  String isOp;
  String isOper;
  String isReturnable;
  String returnPeriod;
  String availSince;
  String outOfStockActions;
  String localization;
  String minQty;
  String maxQty;
  String qtyStep;
  String listQtyCount;
  String taxIds;
  String ageVerification;
  String ageLimit;
  String optionsType;
  String exceptionsType;
  String detailsLayout;
  ShippingParams shippingParams;
  String buyNowUrl;
  String facebookObjType;
  String minPriceCalc;
  String useCalc;
  int price;
  List<int> categoryIds;
  String position;
  String seoName;
  String seoPath;
  int mainCategory;
  int basePrice;
//  List<Null> selectedOptions;
  bool hasOptions;
//  List<Null> productOptions;
  Discounts discounts;
//  List<Null> qtyContent;
  String mainImage;

  Products(
      {this.productId,
        this.product,
        this.productCode,
        this.productType,
        this.status,
        this.companyId,
        this.listPrice,
        this.amount,
        this.weight,
        this.length,
        this.width,
        this.height,
        this.shippingFreight,
        this.lowAvailLimit,
        this.timestamp,
        this.updatedTimestamp,
        this.usergroupIds,
        this.isEdp,
        this.edpShipping,
        this.unlimitedDownload,
        this.tracking,
        this.freeShipping,
        this.zeroPriceAction,
        this.isPbp,
        this.isOp,
        this.isOper,
        this.isReturnable,
        this.returnPeriod,
        this.availSince,
        this.outOfStockActions,
        this.localization,
        this.minQty,
        this.maxQty,
        this.qtyStep,
        this.listQtyCount,
        this.taxIds,
        this.ageVerification,
        this.ageLimit,
        this.optionsType,
        this.exceptionsType,
        this.detailsLayout,
        this.shippingParams,
        this.buyNowUrl,
        this.facebookObjType,
        this.minPriceCalc,
        this.useCalc,
        this.price,
        this.categoryIds,
        this.position,
        this.seoName,
        this.seoPath,
        this.mainCategory,
        this.basePrice,
//        this.selectedOptions,
        this.hasOptions,
//        this.productOptions,
        this.discounts,
//        this.qtyContent,
        this.mainImage});

  Products.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    product = json['product'];
    productCode = json['product_code'];
    productType = json['product_type'];
    status = json['status'];
    companyId = json['company_id'];
    listPrice = json['list_price'];
    amount = json['amount'];
    weight = json['weight'];
    length = json['length'];
    width = json['width'];
    height = json['height'];
    shippingFreight = json['shipping_freight'];
    lowAvailLimit = json['low_avail_limit'];
    timestamp = json['timestamp'];
    updatedTimestamp = json['updated_timestamp'];
    usergroupIds = json['usergroup_ids'];
    isEdp = json['is_edp'];
    edpShipping = json['edp_shipping'];
    unlimitedDownload = json['unlimited_download'];
    tracking = json['tracking'];
    freeShipping = json['free_shipping'];
    zeroPriceAction = json['zero_price_action'];
    isPbp = json['is_pbp'];
    isOp = json['is_op'];
    isOper = json['is_oper'];
    isReturnable = json['is_returnable'];
    returnPeriod = json['return_period'];
    availSince = json['avail_since'];
    outOfStockActions = json['out_of_stock_actions'];
    localization = json['localization'];
    minQty = json['min_qty'];
    maxQty = json['max_qty'];
    qtyStep = json['qty_step'];
    listQtyCount = json['list_qty_count'];
    taxIds = json['tax_ids'];
    ageVerification = json['age_verification'];
    ageLimit = json['age_limit'];
    optionsType = json['options_type'];
    exceptionsType = json['exceptions_type'];
    detailsLayout = json['details_layout'];
    shippingParams = json['shipping_params'] != null
        ? new ShippingParams.fromJson(json['shipping_params'])
        : null;
    buyNowUrl = json['buy_now_url'];
    facebookObjType = json['facebook_obj_type'];
    minPriceCalc = json['min_price_calc'];
    useCalc = json['use_calc'];
    price = json['price'];
    categoryIds = json['category_ids'].cast<int>();
    position = json['position'];
    seoName = json['seo_name'];
    seoPath = json['seo_path'];
    mainCategory = json['main_category'];
    basePrice = json['base_price'];
 /*   if (json['selected_options'] != null) {
      selectedOptions = new List<Null>();
      json['selected_options'].forEach((v) {
        selectedOptions.add(new Null.fromJson(v));
      });
    }*/
    hasOptions = json['has_options'];
   /* if (json['product_options'] != null) {
      productOptions = new List<Null>();
      json['product_options'].forEach((v) {
        productOptions.add(new Null.fromJson(v));
      });
    }*/
    discounts = json['discounts'] != null
        ? new Discounts.fromJson(json['discounts'])
        : null;
   /* if (json['qty_content'] != null) {
      qtyContent = new List<Null>();
      json['qty_content'].forEach((v) {
        qtyContent.add(new Null.fromJson(v));
      });
    }*/
    mainImage = json['main_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['product'] = this.product;
    data['product_code'] = this.productCode;
    data['product_type'] = this.productType;
    data['status'] = this.status;
    data['company_id'] = this.companyId;
    data['list_price'] = this.listPrice;
    data['amount'] = this.amount;
    data['weight'] = this.weight;
    data['length'] = this.length;
    data['width'] = this.width;
    data['height'] = this.height;
    data['shipping_freight'] = this.shippingFreight;
    data['low_avail_limit'] = this.lowAvailLimit;
    data['timestamp'] = this.timestamp;
    data['updated_timestamp'] = this.updatedTimestamp;
    data['usergroup_ids'] = this.usergroupIds;
    data['is_edp'] = this.isEdp;
    data['edp_shipping'] = this.edpShipping;
    data['unlimited_download'] = this.unlimitedDownload;
    data['tracking'] = this.tracking;
    data['free_shipping'] = this.freeShipping;
    data['zero_price_action'] = this.zeroPriceAction;
    data['is_pbp'] = this.isPbp;
    data['is_op'] = this.isOp;
    data['is_oper'] = this.isOper;
    data['is_returnable'] = this.isReturnable;
    data['return_period'] = this.returnPeriod;
    data['avail_since'] = this.availSince;
    data['out_of_stock_actions'] = this.outOfStockActions;
    data['localization'] = this.localization;
    data['min_qty'] = this.minQty;
    data['max_qty'] = this.maxQty;
    data['qty_step'] = this.qtyStep;
    data['list_qty_count'] = this.listQtyCount;
    data['tax_ids'] = this.taxIds;
    data['age_verification'] = this.ageVerification;
    data['age_limit'] = this.ageLimit;
    data['options_type'] = this.optionsType;
    data['exceptions_type'] = this.exceptionsType;
    data['details_layout'] = this.detailsLayout;
    if (this.shippingParams != null) {
      data['shipping_params'] = this.shippingParams.toJson();
    }
    data['buy_now_url'] = this.buyNowUrl;
    data['facebook_obj_type'] = this.facebookObjType;
    data['min_price_calc'] = this.minPriceCalc;
    data['use_calc'] = this.useCalc;
    data['price'] = this.price;
    data['category_ids'] = this.categoryIds;
    data['position'] = this.position;
    data['seo_name'] = this.seoName;
    data['seo_path'] = this.seoPath;
    data['main_category'] = this.mainCategory;
    data['base_price'] = this.basePrice;
    /*if (this.selectedOptions != null) {
      data['selected_options'] =
          this.selectedOptions.map((v) => v.toJson()).toList();
    }*/
    data['has_options'] = this.hasOptions;
    /*if (this.productOptions != null) {
      data['product_options'] =
          this.productOptions.map((v) => v.toJson()).toList();
    }*/
    if (this.discounts != null) {
      data['discounts'] = this.discounts.toJson();
    }
    /*if (this.qtyContent != null) {
      data['qty_content'] = this.qtyContent.map((v) => v.toJson()).toList();
    }*/
    data['main_image'] = this.mainImage;
    return data;
  }
}

class ShippingParams {
  int minItemsInBox;
  int maxItemsInBox;
  int boxLength;
  int boxWidth;
  int boxHeight;

  ShippingParams(
      {this.minItemsInBox,
        this.maxItemsInBox,
        this.boxLength,
        this.boxWidth,
        this.boxHeight});

  ShippingParams.fromJson(Map<String, dynamic> json) {
    minItemsInBox = json['min_items_in_box'];
    maxItemsInBox = json['max_items_in_box'];
    boxLength = json['box_length'];
    boxWidth = json['box_width'];
    boxHeight = json['box_height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['min_items_in_box'] = this.minItemsInBox;
    data['max_items_in_box'] = this.maxItemsInBox;
    data['box_length'] = this.boxLength;
    data['box_width'] = this.boxWidth;
    data['box_height'] = this.boxHeight;
    return data;
  }
}

class Discounts {
  int a;
  int p;

  Discounts({this.a, this.p});

  Discounts.fromJson(Map<String, dynamic> json) {
    a = json['A'];
    p = json['P'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['A'] = this.a;
    data['P'] = this.p;
    return data;
  }
}
