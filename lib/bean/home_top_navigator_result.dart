import 'dart:convert' show json;

class HomeTopNavigatorResult {

  bool success;
  String code;
  String message;
  List<List<HomeTopNavigatorBean>> entity;

  HomeTopNavigatorResult.fromParams({this.success, this.code, this.message, this.entity});

  factory HomeTopNavigatorResult(jsonStr) => jsonStr == null ? null : jsonStr is String ? new HomeTopNavigatorResult.fromJson(json.decode(jsonStr)) : new HomeTopNavigatorResult.fromJson(jsonStr);

  HomeTopNavigatorResult.fromJson(jsonRes) {
    success = jsonRes['success'];
    code = jsonRes['code'];
    message = jsonRes['message'];
    entity = jsonRes['entity'] == null ? null : [];

    for (var entityItem in entity == null ? [] : jsonRes['entity']){
      List<HomeTopNavigatorBean> entityChild = entityItem == null ? null : [];
      for (var entityItemItem in entityChild == null ? [] : entityItem){
        entityChild.add(entityItemItem == null ? null : new HomeTopNavigatorBean.fromJson(entityItemItem));
      }
      entity.add(entityChild);
    }
  }

  @override
  String toString() {
    return '{"success": $success,"code": ${code != null?'${json.encode(code)}':'null'},"message": ${message != null?'${json.encode(message)}':'null'},"entity": $entity}';
  }
}

class HomeTopNavigatorBean {

  int opt_id;
  String imagesUrl;
  String linkAddress;
  String title;
  String type;

  HomeTopNavigatorBean.fromParams({this.opt_id, this.imagesUrl, this.linkAddress, this.title, this.type});

  HomeTopNavigatorBean.fromJson(jsonRes) {
    opt_id = jsonRes['opt_id'];
    imagesUrl = jsonRes['imagesUrl'];
    linkAddress = jsonRes['linkAddress'];
    title = jsonRes['title'];
    type = jsonRes['type'];
  }

  @override
  String toString() {
    return '{"opt_id": $opt_id,"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'},"type": ${type != null?'${json.encode(type)}':'null'}}';
  }
}

