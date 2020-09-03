class BookDetailsModel {
  int minItemsInBox;
  int maxItemsInBox;
  int boxLength;
  int boxWidth;
  int boxHeight;
  int productId;
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
  List<String> taxIds;
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
  String langCode;
  String product;
  String shortname;
  String shortDescription;
  String fullDescription;
  String metaKeywords;
  String metaDescription;
  String searchWords;
  String pageTitle;
  String ageWarningMessage;
  String promoText;
  int price;
  List<String> categoryIds;
  String popularity;
  String seoName;
  String seoPath;
  int basePrice;
  int mainCategory;
  String sharedProduct;

//  ProductFeatures productFeatures;
  List<String> sharedBetweenCompanies;
  String mainImage;
  List<String> images;

  BookDetailsModel(
      {this.minItemsInBox,
      this.maxItemsInBox,
      this.boxLength,
      this.boxWidth,
      this.boxHeight,
      this.productId,
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
      this.langCode,
      this.product,
      this.shortname,
      this.shortDescription,
      this.fullDescription,
      this.metaKeywords,
      this.metaDescription,
      this.searchWords,
      this.pageTitle,
      this.ageWarningMessage,
      this.promoText,
      this.price,
      this.categoryIds,
      this.popularity,
      this.seoName,
      this.seoPath,
      this.basePrice,
      this.mainCategory,
      this.sharedProduct,
//      this.productFeatures,
      this.sharedBetweenCompanies,
      this.mainImage,
      this.images});

  BookDetailsModel.fromJson(Map<String, dynamic> json) {
    minItemsInBox = json['min_items_in_box'];
    maxItemsInBox = json['max_items_in_box'];
    boxLength = json['box_length'];
    boxWidth = json['box_width'];
    boxHeight = json['box_height'];
    productId = json['product_id'];
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
    taxIds = json['tax_ids'].cast<String>();
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
    langCode = json['lang_code'];
    product = json['product'];
    shortname = json['shortname'];
    shortDescription = json['short_description'];
    fullDescription = json['full_description'];
    metaKeywords = json['meta_keywords'];
    metaDescription = json['meta_description'];
    searchWords = json['search_words'];
    pageTitle = json['page_title'];
    ageWarningMessage = json['age_warning_message'];
    promoText = json['promo_text'];
    price = json['price'];
    categoryIds = json['category_ids'].cast<String>();
    popularity = json['popularity'];
    seoName = json['seo_name'];
    seoPath = json['seo_path'];
    basePrice = json['base_price'];
    mainCategory = json['main_category'];
    sharedProduct = json['shared_product'];
//    productFeatures = json['product_features'] != null ? new ProductFeatures.fromJson(json['product_features']) : null;
    sharedBetweenCompanies = json['shared_between_companies'].cast<String>();
    mainImage = json['main_image'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['min_items_in_box'] = this.minItemsInBox;
    data['max_items_in_box'] = this.maxItemsInBox;
    data['box_length'] = this.boxLength;
    data['box_width'] = this.boxWidth;
    data['box_height'] = this.boxHeight;
    data['product_id'] = this.productId;
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
    data['lang_code'] = this.langCode;
    data['product'] = this.product;
    data['shortname'] = this.shortname;
    data['short_description'] = this.shortDescription;
    data['full_description'] = this.fullDescription;
    data['meta_keywords'] = this.metaKeywords;
    data['meta_description'] = this.metaDescription;
    data['search_words'] = this.searchWords;
    data['page_title'] = this.pageTitle;
    data['age_warning_message'] = this.ageWarningMessage;
    data['promo_text'] = this.promoText;
    data['price'] = this.price;
    data['category_ids'] = this.categoryIds;
    data['popularity'] = this.popularity;
    data['seo_name'] = this.seoName;
    data['seo_path'] = this.seoPath;
    data['base_price'] = this.basePrice;
    data['main_category'] = this.mainCategory;
    data['shared_product'] = this.sharedProduct;
    /*if (this.productFeatures != null) {
      data['product_features'] = this.productFeatures.toJson();
    }*/
    data['shared_between_companies'] = this.sharedBetweenCompanies;
    data['main_image'] = this.mainImage;
    data['images'] = this.images;
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
