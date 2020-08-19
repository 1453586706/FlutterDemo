class CategoryParentOptResult {
  String message;
  String code;
  bool success;
  EntityBean entity;

  CategoryParentOptResult({this.message, this.code, this.success, this.entity});

  CategoryParentOptResult.fromJson(Map<String, dynamic> json) {    
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
  GoodsOptGetResponseBean goodsOptGetResponse;

  EntityBean({this.goodsOptGetResponse});

  EntityBean.fromJson(Map<String, dynamic> json) {    
    this.goodsOptGetResponse = json['goods_opt_get_response'] != null ? GoodsOptGetResponseBean.fromJson(json['goods_opt_get_response']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.goodsOptGetResponse != null) {
      data['goods_opt_get_response'] = this.goodsOptGetResponse.toJson();
    }
    return data;
  }
}

class GoodsOptGetResponseBean {
  List<GoodsOptListListBean> goodsOptList;

  GoodsOptGetResponseBean({this.goodsOptList});

  GoodsOptGetResponseBean.fromJson(Map<String, dynamic> json) {    
    this.goodsOptList = (json['goods_opt_list'] as List)!=null?(json['goods_opt_list'] as List).map((i) => GoodsOptListListBean.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['goods_opt_list'] = this.goodsOptList != null?this.goodsOptList.map((i) => i.toJson()).toList():null;
    return data;
  }
}

class GoodsOptListListBean {
  String id;
  String optName;
  String image;
  int optId;
  int parentOptId;
  int level;

  GoodsOptListListBean({this.id, this.optName, this.image, this.optId, this.parentOptId, this.level});

  GoodsOptListListBean.fromJson(Map<String, dynamic> json) {    
    this.id = json['id'];
    this.optName = json['opt_name'];
    this.image = json['image'];
    this.optId = json['opt_id'];
    this.parentOptId = json['parent_opt_id'];
    this.level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['opt_name'] = this.optName;
    data['image'] = this.image;
    data['opt_id'] = this.optId;
    data['parent_opt_id'] = this.parentOptId;
    data['level'] = this.level;
    return data;
  }
}
