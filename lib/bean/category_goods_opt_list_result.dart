import 'dart:convert' show json;

class GoodsOptListResult {

  bool success;
  String message;
  GoodsOptListResultEntity entity;

  GoodsOptListResult.fromParams({this.success, this.message, this.entity});

  factory GoodsOptListResult(jsonStr) => jsonStr == null ? null : jsonStr is String ? new GoodsOptListResult.fromJson(json.decode(jsonStr)) : new GoodsOptListResult.fromJson(jsonStr);

  GoodsOptListResult.fromJson(jsonRes) {
    success = jsonRes['success'];
    message = jsonRes['message'];
    entity = jsonRes['entity'] == null ? null : new GoodsOptListResultEntity.fromJson(jsonRes['entity']);
  }

  @override
  String toString() {
    return '{"success": $success,"message": ${message != null?'${json.encode(message)}':'null'},"entity": $entity}';
  }
}

class GoodsOptListResultEntity {

  GoodsOptSearchResponse goods_search_response;

  GoodsOptListResultEntity.fromParams({this.goods_search_response});

  GoodsOptListResultEntity.fromJson(jsonRes) {
    goods_search_response = jsonRes['goods_search_response'] == null ? null : new GoodsOptSearchResponse.fromJson(jsonRes['goods_search_response']);
  }

  @override
  String toString() {
    return '{"goods_search_response": $goods_search_response}';
  }
}

class GoodsOptSearchResponse {

  int total_count;
  List<CategoryGoods> goods_list;

  GoodsOptSearchResponse.fromParams({this.total_count, this.goods_list});

  GoodsOptSearchResponse.fromJson(jsonRes) {
    total_count = jsonRes['total_count'];
    goods_list = jsonRes['goods_list'] == null ? null : [];

    for (var goods_listItem in goods_list == null ? [] : jsonRes['goods_list']){
      goods_list.add(goods_listItem == null ? null : new CategoryGoods.fromJson(goods_listItem));
    }
  }

  @override
  String toString() {
    return '{"total_count": $total_count,"goods_list": $goods_list}';
  }
}

class CategoryGoods {

  Object cat_id;
  Object cps_sign;
  Object create_at;
  Object goods_gallery_urls;
  int activity_type;
  int category_id;
  int clt_cpn_discount;
  int clt_cpn_end_time;
  int clt_cpn_min_amt;
  int clt_cpn_quantity;
  int clt_cpn_remain_quantity;
  int clt_cpn_start_time;
  int coupon_discount;
  int coupon_end_time;
  int coupon_min_order_amount;
  int coupon_remain_quantity;
  int coupon_start_time;
  int coupon_total_quantity;
  int goods_id;
  int mall_coupon_discount_pct;
  int mall_coupon_end_time;
  int mall_coupon_id;
  int mall_coupon_max_discount_amount;
  int mall_coupon_min_order_amount;
  int mall_coupon_remain_quantity;
  int mall_coupon_start_time;
  int mall_coupon_total_quantity;
  int mall_cps;
  int mall_id;
  int mall_rate;
  int merchant_type;
  int min_group_price;
  int min_normal_price;
  int opt_id;
  int plan_type;
  int promotion_rate;
  int zs_duo_id;
  double crt_rf_ordr_rto1m;
  bool has_coupon;
  bool has_mall_coupon;
  bool only_scene_auth;
  String category_name;
  String clt_cpn_batch_sn;
  String desc_txt;
  String goods_desc;
  String goods_image_url;
  String goods_name;
  String goods_thumbnail_url;
  String lgst_txt;
  String mall_name;
  String opt_name;
  String sales_tip;
  String search_id;
  String serv_txt;
  List<int> activity_tags;
  List<int> cat_ids;
  List<int> opt_ids;
  List<int> service_tags;

  CategoryGoods.fromParams({this.cat_id, this.cps_sign, this.create_at, this.goods_gallery_urls, this.activity_type, this.category_id, this.clt_cpn_discount, this.clt_cpn_end_time, this.clt_cpn_min_amt, this.clt_cpn_quantity, this.clt_cpn_remain_quantity, this.clt_cpn_start_time, this.coupon_discount, this.coupon_end_time, this.coupon_min_order_amount, this.coupon_remain_quantity, this.coupon_start_time, this.coupon_total_quantity, this.goods_id, this.mall_coupon_discount_pct, this.mall_coupon_end_time, this.mall_coupon_id, this.mall_coupon_max_discount_amount, this.mall_coupon_min_order_amount, this.mall_coupon_remain_quantity, this.mall_coupon_start_time, this.mall_coupon_total_quantity, this.mall_cps, this.mall_id, this.mall_rate, this.merchant_type, this.min_group_price, this.min_normal_price, this.opt_id, this.plan_type, this.promotion_rate, this.zs_duo_id, this.crt_rf_ordr_rto1m, this.has_coupon, this.has_mall_coupon, this.only_scene_auth, this.category_name, this.clt_cpn_batch_sn, this.desc_txt, this.goods_desc, this.goods_image_url, this.goods_name, this.goods_thumbnail_url, this.lgst_txt, this.mall_name, this.opt_name, this.sales_tip, this.search_id, this.serv_txt, this.activity_tags, this.cat_ids, this.opt_ids, this.service_tags});

  CategoryGoods.fromJson(jsonRes) {
    cat_id = jsonRes['cat_id'];
    cps_sign = jsonRes['cps_sign'];
    create_at = jsonRes['create_at'];
    goods_gallery_urls = jsonRes['goods_gallery_urls'];
    activity_type = jsonRes['activity_type'];
    category_id = jsonRes['category_id'];
    clt_cpn_discount = jsonRes['clt_cpn_discount'];
    clt_cpn_end_time = jsonRes['clt_cpn_end_time'];
    clt_cpn_min_amt = jsonRes['clt_cpn_min_amt'];
    clt_cpn_quantity = jsonRes['clt_cpn_quantity'];
    clt_cpn_remain_quantity = jsonRes['clt_cpn_remain_quantity'];
    clt_cpn_start_time = jsonRes['clt_cpn_start_time'];
    coupon_discount = jsonRes['coupon_discount'];
    coupon_end_time = jsonRes['coupon_end_time'];
    coupon_min_order_amount = jsonRes['coupon_min_order_amount'];
    coupon_remain_quantity = jsonRes['coupon_remain_quantity'];
    coupon_start_time = jsonRes['coupon_start_time'];
    coupon_total_quantity = jsonRes['coupon_total_quantity'];
    goods_id = jsonRes['goods_id'];
    mall_coupon_discount_pct = jsonRes['mall_coupon_discount_pct'];
    mall_coupon_end_time = jsonRes['mall_coupon_end_time'];
    mall_coupon_id = jsonRes['mall_coupon_id'];
    mall_coupon_max_discount_amount = jsonRes['mall_coupon_max_discount_amount'];
    mall_coupon_min_order_amount = jsonRes['mall_coupon_min_order_amount'];
    mall_coupon_remain_quantity = jsonRes['mall_coupon_remain_quantity'];
    mall_coupon_start_time = jsonRes['mall_coupon_start_time'];
    mall_coupon_total_quantity = jsonRes['mall_coupon_total_quantity'];
    mall_cps = jsonRes['mall_cps'];
    mall_id = jsonRes['mall_id'];
    mall_rate = jsonRes['mall_rate'];
    merchant_type = jsonRes['merchant_type'];
    min_group_price = jsonRes['min_group_price'];
    min_normal_price = jsonRes['min_normal_price'];
    opt_id = jsonRes['opt_id'];
    plan_type = jsonRes['plan_type'];
    promotion_rate = jsonRes['promotion_rate'];
    zs_duo_id = jsonRes['zs_duo_id'];
    crt_rf_ordr_rto1m = jsonRes['crt_rf_ordr_rto1m'];
    has_coupon = jsonRes['has_coupon'];
    has_mall_coupon = jsonRes['has_mall_coupon'];
    only_scene_auth = jsonRes['only_scene_auth'];
    category_name = jsonRes['category_name'];
    clt_cpn_batch_sn = jsonRes['clt_cpn_batch_sn'];
    desc_txt = jsonRes['desc_txt'];
    goods_desc = jsonRes['goods_desc'];
    goods_image_url = jsonRes['goods_image_url'];
    goods_name = jsonRes['goods_name'];
    goods_thumbnail_url = jsonRes['goods_thumbnail_url'];
    lgst_txt = jsonRes['lgst_txt'];
    mall_name = jsonRes['mall_name'];
    opt_name = jsonRes['opt_name'];
    sales_tip = jsonRes['sales_tip'];
    search_id = jsonRes['search_id'];
    serv_txt = jsonRes['serv_txt'];
    activity_tags = jsonRes['activity_tags'] == null ? null : [];

    for (var activity_tagsItem in activity_tags == null ? [] : jsonRes['activity_tags']){
      activity_tags.add(activity_tagsItem);
    }

    cat_ids = jsonRes['cat_ids'] == null ? null : [];

    for (var cat_idsItem in cat_ids == null ? [] : jsonRes['cat_ids']){
      cat_ids.add(cat_idsItem);
    }

    opt_ids = jsonRes['opt_ids'] == null ? null : [];

    for (var opt_idsItem in opt_ids == null ? [] : jsonRes['opt_ids']){
      opt_ids.add(opt_idsItem);
    }

    service_tags = jsonRes['service_tags'] == null ? null : [];

    for (var service_tagsItem in service_tags == null ? [] : jsonRes['service_tags']){
      service_tags.add(service_tagsItem);
    }
  }

  @override
  String toString() {
    return '{"cat_id": $cat_id,"cps_sign": $cps_sign,"create_at": $create_at,"goods_gallery_urls": $goods_gallery_urls,"activity_type": $activity_type,"category_id": $category_id,"clt_cpn_discount": $clt_cpn_discount,"clt_cpn_end_time": $clt_cpn_end_time,"clt_cpn_min_amt": $clt_cpn_min_amt,"clt_cpn_quantity": $clt_cpn_quantity,"clt_cpn_remain_quantity": $clt_cpn_remain_quantity,"clt_cpn_start_time": $clt_cpn_start_time,"coupon_discount": $coupon_discount,"coupon_end_time": $coupon_end_time,"coupon_min_order_amount": $coupon_min_order_amount,"coupon_remain_quantity": $coupon_remain_quantity,"coupon_start_time": $coupon_start_time,"coupon_total_quantity": $coupon_total_quantity,"goods_id": $goods_id,"mall_coupon_discount_pct": $mall_coupon_discount_pct,"mall_coupon_end_time": $mall_coupon_end_time,"mall_coupon_id": $mall_coupon_id,"mall_coupon_max_discount_amount": $mall_coupon_max_discount_amount,"mall_coupon_min_order_amount": $mall_coupon_min_order_amount,"mall_coupon_remain_quantity": $mall_coupon_remain_quantity,"mall_coupon_start_time": $mall_coupon_start_time,"mall_coupon_total_quantity": $mall_coupon_total_quantity,"mall_cps": $mall_cps,"mall_id": $mall_id,"mall_rate": $mall_rate,"merchant_type": $merchant_type,"min_group_price": $min_group_price,"min_normal_price": $min_normal_price,"opt_id": $opt_id,"plan_type": $plan_type,"promotion_rate": $promotion_rate,"zs_duo_id": $zs_duo_id,"crt_rf_ordr_rto1m": $crt_rf_ordr_rto1m,"has_coupon": $has_coupon,"has_mall_coupon": $has_mall_coupon,"only_scene_auth": $only_scene_auth,"category_name": ${category_name != null?'${json.encode(category_name)}':'null'},"clt_cpn_batch_sn": ${clt_cpn_batch_sn != null?'${json.encode(clt_cpn_batch_sn)}':'null'},"desc_txt": ${desc_txt != null?'${json.encode(desc_txt)}':'null'},"goods_desc": ${goods_desc != null?'${json.encode(goods_desc)}':'null'},"goods_image_url": ${goods_image_url != null?'${json.encode(goods_image_url)}':'null'},"goods_name": ${goods_name != null?'${json.encode(goods_name)}':'null'},"goods_thumbnail_url": ${goods_thumbnail_url != null?'${json.encode(goods_thumbnail_url)}':'null'},"lgst_txt": ${lgst_txt != null?'${json.encode(lgst_txt)}':'null'},"mall_name": ${mall_name != null?'${json.encode(mall_name)}':'null'},"opt_name": ${opt_name != null?'${json.encode(opt_name)}':'null'},"sales_tip": ${sales_tip != null?'${json.encode(sales_tip)}':'null'},"search_id": ${search_id != null?'${json.encode(search_id)}':'null'},"serv_txt": ${serv_txt != null?'${json.encode(serv_txt)}':'null'},"activity_tags": $activity_tags,"cat_ids": $cat_ids,"opt_ids": $opt_ids,"service_tags": $service_tags}';
  }
}

