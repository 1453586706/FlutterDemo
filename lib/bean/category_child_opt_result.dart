class CategoryChildOptResult {
  String message;
  String code;
  bool success;
  List<EntityListBean> entity;

  CategoryChildOptResult({this.message, this.code, this.success, this.entity});

  CategoryChildOptResult.fromJson(Map<String, dynamic> json) {    
    this.message = json['message'];
    this.code = json['code'];
    this.success = json['success'];
    this.entity = (json['entity'] as List)!=null?(json['entity'] as List).map((i) => EntityListBean.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['code'] = this.code;
    data['success'] = this.success;
    data['entity'] = this.entity != null?this.entity.map((i) => i.toJson()).toList():null;
    return data;
  }

}

class EntityListBean {
  String optName;
  String image;
  int id;
  int optId;
  int parentOptId;
  int level;

  EntityListBean({this.optName, this.image, this.id, this.optId, this.parentOptId, this.level});

  EntityListBean.fromJson(Map<String, dynamic> json) {    
    this.optName = json['opt_name'];
    this.image = json['image'];
    this.id = json['id'];
    this.optId = json['opt_id'];
    this.parentOptId = json['parent_opt_id'];
    this.level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['opt_name'] = this.optName;
    data['image'] = this.image;
    data['id'] = this.id;
    data['opt_id'] = this.optId;
    data['parent_opt_id'] = this.parentOptId;
    data['level'] = this.level;
    return data;
  }
}
