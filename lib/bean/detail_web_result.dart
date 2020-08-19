class DetailWebResult {
  String message;
  bool success;
  DetailWebBean entity;

  DetailWebResult({this.message, this.success, this.entity});

  DetailWebResult.fromJson(Map<String, dynamic> json) {    
    this.message = json['message'];
    this.success = json['success'];
    this.entity = json['entity'] != null ? DetailWebBean.fromJson(json['entity']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['success'] = this.success;
    if (this.entity != null) {
      data['entity'] = this.entity.toJson();
    }
    return data;
  }

}

class DetailWebBean {
  String shareDesc;
  String pddUrl;
  String goodsId;
  String goodsDesc;
  String goodsName;
  bool isExist;
  bool realDesc;
  List<DetailGalleryListBean> detailGallery;

  DetailWebBean({this.shareDesc, this.pddUrl, this.goodsId, this.goodsDesc, this.goodsName, this.isExist, this.realDesc, this.detailGallery});

  DetailWebBean.fromJson(Map<String, dynamic> json) {
    this.shareDesc = json['shareDesc'];
    this.pddUrl = json['pddUrl'];
    this.goodsId = json['goodsId'];
    this.goodsDesc = json['goodsDesc'];
    this.goodsName = json['goodsName'];
    this.isExist = json['isExist'];
    this.realDesc = json['realDesc'];
    this.detailGallery = (json['detailGallery'] as List)!=null?(json['detailGallery'] as List).map((i) => DetailGalleryListBean.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shareDesc'] = this.shareDesc;
    data['pddUrl'] = this.pddUrl;
    data['goodsId'] = this.goodsId;
    data['goodsDesc'] = this.goodsDesc;
    data['goodsName'] = this.goodsName;
    data['isExist'] = this.isExist;
    data['realDesc'] = this.realDesc;
    data['detailGallery'] = this.detailGallery != null?this.detailGallery.map((i) => i.toJson()).toList():null;
    return data;
  }
}

class DetailGalleryListBean {
  String url;
  int height;
  int width;

  DetailGalleryListBean({this.url, this.height, this.width});

  DetailGalleryListBean.fromJson(Map<String, dynamic> json) {    
    this.url = json['url'];
    this.height = json['height'];
    this.width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['height'] = this.height;
    data['width'] = this.width;
    return data;
  }
}
