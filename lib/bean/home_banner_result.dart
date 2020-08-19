import 'dart:convert' show json;

class HomeBannerResult {

  bool success;
  String code;
  String message;
  List<HomeBannerBean> entity;

  HomeBannerResult.fromParams({this.success, this.code, this.message, this.entity});

  factory HomeBannerResult(jsonStr) => jsonStr == null ? null : jsonStr is String ? new HomeBannerResult.fromJson(json.decode(jsonStr)) : new HomeBannerResult.fromJson(jsonStr);

  HomeBannerResult.fromJson(jsonRes) {
    success = jsonRes['success'];
    code = jsonRes['code'];
    message = jsonRes['message'];
    entity = jsonRes['entity'] == null ? null : [];

    for (var entityItem in entity == null ? [] : jsonRes['entity']){
      entity.add(entityItem == null ? null : new HomeBannerBean.fromJson(entityItem));
    }
  }

  @override
  String toString() {
    return '{"success": $success,"code": ${code != null?'${json.encode(code)}':'null'},"message": ${message != null?'${json.encode(message)}':'null'},"entity": $entity}';
  }
}

class HomeBannerBean {

  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String bgImagesUrl;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  HomeBannerBean.fromParams({this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.bgImagesUrl, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  HomeBannerBean.fromJson(jsonRes) {
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    color = jsonRes['color'];
    imagesUrl = jsonRes['imagesUrl'];
    keyWord = jsonRes['keyWord'];
    linkAddress = jsonRes['linkAddress'];
    mobileImagesUrl = jsonRes['mobileImagesUrl'];
    previewUrl = jsonRes['previewUrl'];
    title = jsonRes['title'];
  }

  @override
  String toString() {
    return '{"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"bgImagesUrl": ${bgImagesUrl != null?'${json.encode(bgImagesUrl)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

