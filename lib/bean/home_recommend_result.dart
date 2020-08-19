class HomeRecommendResult {
  String message;
  String code;
  bool success;
  EntityBean entity;

  HomeRecommendResult({this.message, this.code, this.success, this.entity});

  HomeRecommendResult.fromJson(Map<String, dynamic> json) {    
    this.message = json['message'];
    this.code = json['code'];
    this.success = json['success'];
    this.entity = json['entity'] != null ? EntityBean.fromJson(json['entity']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['code'] = this.code;
    data['success'] = this.success;
    if (this.entity != null) {
      data['entity'] = this.entity.toJson();
    }
    return data;
  }

}

class EntityBean {
  GoodsSearchResponseBean goodsSearchResponse;

  EntityBean({this.goodsSearchResponse});

  EntityBean.fromJson(Map<String, dynamic> json) {    
    this.goodsSearchResponse = json['goods_search_response'] != null ? GoodsSearchResponseBean.fromJson(json['goods_search_response']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.goodsSearchResponse != null) {
      data['goods_search_response'] = this.goodsSearchResponse.toJson();
    }
    return data;
  }
}

class GoodsSearchResponseBean {
  int totalCount;
  List<GoodsListListBean> goodsList;

  GoodsSearchResponseBean({this.totalCount, this.goodsList});

  GoodsSearchResponseBean.fromJson(Map<String, dynamic> json) {    
    this.totalCount = json['total_count'];
    this.goodsList = (json['goods_list'] as List)!=null?(json['goods_list'] as List).map((i) => GoodsListListBean.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_count'] = this.totalCount;
    data['goods_list'] = this.goodsList != null?this.goodsList.map((i) => i.toJson()).toList():null;
    return data;
  }
}

class GoodsListListBean {
  String categoryName;
  String salesTip;
  String mallName;
  String mallType;
  String goodsName;
  String optName;
  String goodsThumbnailUrl;
  String goodsImageUrl;
  String goodsGalleryUrls;
  String platform;
  bool hasCoupon;
  int avgDesc;
  int couponRemainQuantity;
  int avgServ;
  int avgLgst;
  double servPct;
  int promotionRate;
  int promotionAmount;
  int soldQuantity;
  int couponMinOrderAmount;
  double lgstPct;
  int categoryId;
  int mallId;
  int goodsEvalScore;
  int couponTotalQuantity;
  double descPct;
  int merchantType;
  int goodsEvalCount;
  int minNormalPrice;
  int createAt;
  int minGroupPrice;
  int mallCps;
  int couponStartTime;
  int couponDiscount;
  int couponEndTime;
  int couponPrice;
  int awardAmount;
  int plusAmount;
  num goodsId;

  GoodsListListBean({this.categoryName, this.salesTip, this.mallName, this.mallType, this.goodsName, this.optName, this.goodsThumbnailUrl, this.goodsImageUrl, this.goodsGalleryUrls, this.platform, this.hasCoupon, this.avgDesc, this.couponRemainQuantity, this.avgServ, this.avgLgst, this.servPct, this.promotionRate, this.promotionAmount, this.soldQuantity, this.couponMinOrderAmount, this.lgstPct, this.categoryId, this.mallId, this.goodsEvalScore, this.couponTotalQuantity, this.descPct, this.merchantType, this.goodsEvalCount, this.minNormalPrice, this.createAt, this.minGroupPrice, this.mallCps, this.couponStartTime, this.couponDiscount, this.couponEndTime, this.couponPrice, this.awardAmount, this.plusAmount, this.goodsId});

  GoodsListListBean.fromJson(Map<String, dynamic> json) {    
    this.categoryName = json['category_name'];
    this.salesTip = json['sales_tip'];
    this.mallName = json['mall_name'];
    this.mallType = json['mall_type'];
    this.goodsName = json['goods_name'];
    this.optName = json['opt_name'];
    this.goodsThumbnailUrl = json['goods_thumbnail_url'];
    this.goodsImageUrl = json['goods_image_url'];
    this.goodsGalleryUrls = json['goods_gallery_urls'];
    this.platform = json['platform'];
    this.hasCoupon = json['has_coupon'];
    this.avgDesc = json['avg_desc'];
    this.couponRemainQuantity = json['coupon_remain_quantity'];
    this.avgServ = json['avg_serv'];
    this.avgLgst = json['avg_lgst'];
    this.servPct = json['serv_pct'];
    this.promotionRate = json['promotion_rate'];
    this.promotionAmount = json['promotion_amount'];
    this.soldQuantity = json['sold_quantity'];
    this.couponMinOrderAmount = json['coupon_min_order_amount'];
    this.lgstPct = json['lgst_pct'];
    this.categoryId = json['category_id'];
    this.mallId = json['mall_id'];
    this.goodsEvalScore = json['goods_eval_score'];
    this.couponTotalQuantity = json['coupon_total_quantity'];
    this.descPct = json['desc_pct'];
    this.merchantType = json['merchant_type'];
    this.goodsEvalCount = json['goods_eval_count'];
    this.minNormalPrice = json['min_normal_price'];
    this.createAt = json['create_at'];
    this.minGroupPrice = json['min_group_price'];
    this.mallCps = json['mall_cps'];
    this.couponStartTime = json['coupon_start_time'];
    this.couponDiscount = json['coupon_discount'];
    this.couponEndTime = json['coupon_end_time'];
    this.couponPrice = json['coupon_price'];
    this.awardAmount = json['awardAmount'];
    this.plusAmount = json['plusAmount'];
    this.goodsId = json['goods_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_name'] = this.categoryName;
    data['sales_tip'] = this.salesTip;
    data['mall_name'] = this.mallName;
    data['mall_type'] = this.mallType;
    data['goods_name'] = this.goodsName;
    data['opt_name'] = this.optName;
    data['goods_thumbnail_url'] = this.goodsThumbnailUrl;
    data['goods_image_url'] = this.goodsImageUrl;
    data['goods_gallery_urls'] = this.goodsGalleryUrls;
    data['platform'] = this.platform;
    data['has_coupon'] = this.hasCoupon;
    data['avg_desc'] = this.avgDesc;
    data['coupon_remain_quantity'] = this.couponRemainQuantity;
    data['avg_serv'] = this.avgServ;
    data['avg_lgst'] = this.avgLgst;
    data['serv_pct'] = this.servPct;
    data['promotion_rate'] = this.promotionRate;
    data['promotion_amount'] = this.promotionAmount;
    data['sold_quantity'] = this.soldQuantity;
    data['coupon_min_order_amount'] = this.couponMinOrderAmount;
    data['lgst_pct'] = this.lgstPct;
    data['category_id'] = this.categoryId;
    data['mall_id'] = this.mallId;
    data['goods_eval_score'] = this.goodsEvalScore;
    data['coupon_total_quantity'] = this.couponTotalQuantity;
    data['desc_pct'] = this.descPct;
    data['merchant_type'] = this.merchantType;
    data['goods_eval_count'] = this.goodsEvalCount;
    data['min_normal_price'] = this.minNormalPrice;
    data['create_at'] = this.createAt;
    data['min_group_price'] = this.minGroupPrice;
    data['mall_cps'] = this.mallCps;
    data['coupon_start_time'] = this.couponStartTime;
    data['coupon_discount'] = this.couponDiscount;
    data['coupon_end_time'] = this.couponEndTime;
    data['coupon_price'] = this.couponPrice;
    data['awardAmount'] = this.awardAmount;
    data['plusAmount'] = this.plusAmount;
    data['goods_id'] = this.goodsId;
    return data;
  }
}
