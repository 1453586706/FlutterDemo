class HotGoodsListResult {
  String message;
  String code;
  bool success;
  EntityBean entity;

  HotGoodsListResult({this.message, this.code, this.success, this.entity});

  HotGoodsListResult.fromJson(Map<String, dynamic> json) {    
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
  List<HotGoodsListBean> goodsList;

  GoodsSearchResponseBean({this.totalCount, this.goodsList});

  GoodsSearchResponseBean.fromJson(Map<String, dynamic> json) {    
    this.totalCount = json['total_count'];
    this.goodsList = (json['goods_list'] as List)!=null?(json['goods_list'] as List).map((i) => HotGoodsListBean.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_count'] = this.totalCount;
    data['goods_list'] = this.goodsList != null?this.goodsList.map((i) => i.toJson()).toList():null;
    return data;
  }
}

class HotGoodsListBean {
  String url;
  String remark;
  String goodsName;
  String goodsDescShort;
  String goodsDesc;
  String goodsImageUrl;
  String mallType;
  String mallDesc;
  String couponUrl;
  String guideArticle;
  String activityType;
  String activityid;
  String mallName;
  String couponCondition;
  String avgDesc;
  String avgLgst;
  String avgServ;
  String avgDescText;
  String avgLgstText;
  String avgServText;
  String modifyTime;
  String goodsGalleryUrls;
  String detailUrl;
  String jsonString;
  String shareInfo;
  bool hasCoupon;
  int integralScore;
  int taoCash;
  int selected;
  int id;
  int subjectId;
  int state;
  int sort;
  int minGroupPrice;
  int couponDiscount;
  int couponPrice;
  int soldQuantity;
  int categoryId;
  int mallId;
  int promotionRate;
  int couponRemainQuantity;
  int couponTotalQuantity;
  int couponStartTime;
  int couponEndTime;
  int awardAmount;
  int plusAmount;
  num goodsId;

  HotGoodsListBean({this.url, this.remark, this.goodsName, this.goodsDescShort, this.goodsDesc, this.goodsImageUrl, this.mallType, this.mallDesc, this.couponUrl, this.guideArticle, this.activityType, this.activityid, this.mallName, this.couponCondition, this.avgDesc, this.avgLgst, this.avgServ, this.avgDescText, this.avgLgstText, this.avgServText, this.modifyTime, this.goodsGalleryUrls, this.detailUrl, this.jsonString, this.shareInfo, this.hasCoupon, this.integralScore, this.taoCash, this.selected, this.id, this.subjectId, this.state, this.sort, this.minGroupPrice, this.couponDiscount, this.couponPrice, this.soldQuantity, this.categoryId, this.mallId, this.promotionRate, this.couponRemainQuantity, this.couponTotalQuantity, this.couponStartTime, this.couponEndTime, this.awardAmount, this.plusAmount, this.goodsId});

  HotGoodsListBean.fromJson(Map<String, dynamic> json) {
    this.url = json['url'];
    this.remark = json['remark'];
    this.goodsName = json['goods_name'];
    this.goodsDescShort = json['goods_desc_short'];
    this.goodsDesc = json['goods_desc'];
    this.goodsImageUrl = json['goods_image_url'];
    this.mallType = json['mall_type'];
    this.mallDesc = json['mall_desc'];
    this.couponUrl = json['coupon_url'];
    this.guideArticle = json['guide_article'];
    this.activityType = json['activity_type'];
    this.activityid = json['activityid'];
    this.mallName = json['mall_name'];
    this.couponCondition = json['coupon_condition'];
    this.avgDesc = json['avg_desc'];
    this.avgLgst = json['avg_lgst'];
    this.avgServ = json['avg_serv'];
    this.avgDescText = json['avg_desc_text'];
    this.avgLgstText = json['avg_lgst_text'];
    this.avgServText = json['avg_serv_text'];
    this.modifyTime = json['modify_time'];
    this.goodsGalleryUrls = json['goods_gallery_urls'];
    this.detailUrl = json['detail_url'];
    this.jsonString = json['jsonString'];
    this.shareInfo = json['share_info'];
    this.hasCoupon = json['has_coupon'];
    this.integralScore = json['integral_score'];
    this.taoCash = json['tao_cash'];
    this.selected = json['selected'];
    this.id = json['id'];
    this.subjectId = json['subject_id'];
    this.state = json['state'];
    this.sort = json['sort'];
    this.minGroupPrice = json['min_group_price'];
    this.couponDiscount = json['coupon_discount'];
    this.couponPrice = json['coupon_price'];
    this.soldQuantity = json['sold_quantity'];
    this.categoryId = json['category_id'];
    this.mallId = json['mall_id'];
    this.promotionRate = json['promotion_rate'];
    this.couponRemainQuantity = json['coupon_remain_quantity'];
    this.couponTotalQuantity = json['coupon_total_quantity'];
    this.couponStartTime = json['coupon_start_time'];
    this.couponEndTime = json['coupon_end_time'];
    this.awardAmount = json['awardAmount'];
    this.plusAmount = json['plusAmount'];
    this.goodsId = json['goods_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['remark'] = this.remark;
    data['goods_name'] = this.goodsName;
    data['goods_desc_short'] = this.goodsDescShort;
    data['goods_desc'] = this.goodsDesc;
    data['goods_image_url'] = this.goodsImageUrl;
    data['mall_type'] = this.mallType;
    data['mall_desc'] = this.mallDesc;
    data['coupon_url'] = this.couponUrl;
    data['guide_article'] = this.guideArticle;
    data['activity_type'] = this.activityType;
    data['activityid'] = this.activityid;
    data['mall_name'] = this.mallName;
    data['coupon_condition'] = this.couponCondition;
    data['avg_desc'] = this.avgDesc;
    data['avg_lgst'] = this.avgLgst;
    data['avg_serv'] = this.avgServ;
    data['avg_desc_text'] = this.avgDescText;
    data['avg_lgst_text'] = this.avgLgstText;
    data['avg_serv_text'] = this.avgServText;
    data['modify_time'] = this.modifyTime;
    data['goods_gallery_urls'] = this.goodsGalleryUrls;
    data['detail_url'] = this.detailUrl;
    data['jsonString'] = this.jsonString;
    data['share_info'] = this.shareInfo;
    data['has_coupon'] = this.hasCoupon;
    data['integral_score'] = this.integralScore;
    data['tao_cash'] = this.taoCash;
    data['selected'] = this.selected;
    data['id'] = this.id;
    data['subject_id'] = this.subjectId;
    data['state'] = this.state;
    data['sort'] = this.sort;
    data['min_group_price'] = this.minGroupPrice;
    data['coupon_discount'] = this.couponDiscount;
    data['coupon_price'] = this.couponPrice;
    data['sold_quantity'] = this.soldQuantity;
    data['category_id'] = this.categoryId;
    data['mall_id'] = this.mallId;
    data['promotion_rate'] = this.promotionRate;
    data['coupon_remain_quantity'] = this.couponRemainQuantity;
    data['coupon_total_quantity'] = this.couponTotalQuantity;
    data['coupon_start_time'] = this.couponStartTime;
    data['coupon_end_time'] = this.couponEndTime;
    data['awardAmount'] = this.awardAmount;
    data['plusAmount'] = this.plusAmount;
    data['goods_id'] = this.goodsId;
    return data;
  }
}
