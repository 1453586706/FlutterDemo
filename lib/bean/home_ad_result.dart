import 'dart:convert' show json;

class HomeADResult {

  bool success;
  String code;
  String message;
  HomeADEntity entity;

  HomeADResult.fromParams({this.success, this.code, this.message, this.entity});

  factory HomeADResult(jsonStr) => jsonStr == null ? null : jsonStr is String ? new HomeADResult.fromJson(json.decode(jsonStr)) : new HomeADResult.fromJson(jsonStr);

  HomeADResult.fromJson(jsonRes) {
    success = jsonRes['success'];
    code = jsonRes['code'];
    message = jsonRes['message'];
    entity = jsonRes['entity'] == null ? null : new HomeADEntity.fromJson(jsonRes['entity']);
  }

  @override
  String toString() {
    return '{"success": $success,"code": ${code != null?'${json.encode(code)}':'null'},"message": ${message != null?'${json.encode(message)}':'null'},"entity": $entity}';
  }
}

class HomeADEntity {

  List<HomeRecommendEntity> homeRecommend;
  WebstieImageSList websiteImages;

  HomeADEntity.fromParams({this.homeRecommend, this.websiteImages});

  HomeADEntity.fromJson(jsonRes) {
    homeRecommend = jsonRes['homeRecommend'] == null ? null : [];

    for (var homeRecommendItem in homeRecommend == null ? [] : jsonRes['homeRecommend']){
      homeRecommend.add(homeRecommendItem == null ? null : new HomeRecommendEntity.fromJson(homeRecommendItem));
    }

    websiteImages = jsonRes['websiteImages'] == null ? null : new WebstieImageSList.fromJson(jsonRes['websiteImages']);
  }

  @override
  String toString() {
    return '{"homeRecommend": $homeRecommend,"websiteImages": $websiteImages}';
  }
}

class WebstieImageSList {

  List<WebstieImageSEntity> AppArticleAdvertising;
  List<AppCenterEntity> AppCenterAdvertising;
  List<AppCouponEntity> AppCouponAdvertising;
  List<AppFamousEntity> AppFamousAdvertising;
  List<AppGoodsOptEntity> AppGoodsOpt;
  List<AppPayEntity> AppPayAdvertising;
  List<RED_PACKET_Entity> RED_PACKET_300_1;
  List<TaobaoGoodsOptEntity> TaobaoGoodsOpt;
  List<AppAdvertisingEntity> appAdvertising;
  List<FourThreeEntity> fourThree;
  List<FreeGoodsIndexEntity> freeGoodsIndex;
  List<GetAppOptEntity> getAppOptAdvertising;
  List<GetAppSignEntity> getAppSignAdvertising;
  List<GetFirstImageEntity> getFirstImage;
  List<GiftImageIndexEntity> giftImageIndex;
  List<ImagePacketEntity> imagePacket;
  List<IndexBangDanEntity> indexBangDan;
  List<IndexCenterBannerEntity> indexCenterBanner;
  List<IndexFansGoodsImageEntity> indexFansGoodsImage;
  List<IndexPlusGoodImagesEntity> indexPlusGoodsImage;
  List<IndexTaobaoBannerEntity> indexTaobaoBanner;
  List<IndexTaobaoBannerBGEntity> indexTaobaoBannerBG;
  List<ShopingcartEntity> shopingCartAdvertising;
  List<ThreeColumnEntity> threeColumn;
  List<WeixinQrcodeImageEntity> weixinQrcodeImage;
  List<WinxinQrcodeImagePlusEntity> weixinQrcodeImagePlus;

  WebstieImageSList.fromParams({this.AppArticleAdvertising, this.AppCenterAdvertising, this.AppCouponAdvertising, this.AppFamousAdvertising, this.AppGoodsOpt, this.AppPayAdvertising, this.RED_PACKET_300_1, this.TaobaoGoodsOpt, this.appAdvertising, this.fourThree, this.freeGoodsIndex, this.getAppOptAdvertising, this.getAppSignAdvertising, this.getFirstImage, this.giftImageIndex, this.imagePacket, this.indexBangDan, this.indexCenterBanner, this.indexFansGoodsImage, this.indexPlusGoodsImage, this.indexTaobaoBanner, this.indexTaobaoBannerBG, this.shopingCartAdvertising, this.threeColumn, this.weixinQrcodeImage, this.weixinQrcodeImagePlus});

  WebstieImageSList.fromJson(jsonRes) {
    AppArticleAdvertising = jsonRes['AppArticleAdvertising'] == null ? null : [];

    for (var AppArticleAdvertisingItem in AppArticleAdvertising == null ? [] : jsonRes['AppArticleAdvertising']){
      AppArticleAdvertising.add(AppArticleAdvertisingItem == null ? null : new WebstieImageSEntity.fromJson(AppArticleAdvertisingItem));
    }

    AppCenterAdvertising = jsonRes['AppCenterAdvertising'] == null ? null : [];

    for (var AppCenterAdvertisingItem in AppCenterAdvertising == null ? [] : jsonRes['AppCenterAdvertising']){
      AppCenterAdvertising.add(AppCenterAdvertisingItem == null ? null : new AppCenterEntity.fromJson(AppCenterAdvertisingItem));
    }

    AppCouponAdvertising = jsonRes['AppCouponAdvertising'] == null ? null : [];

    for (var AppCouponAdvertisingItem in AppCouponAdvertising == null ? [] : jsonRes['AppCouponAdvertising']){
      AppCouponAdvertising.add(AppCouponAdvertisingItem == null ? null : new AppCouponEntity.fromJson(AppCouponAdvertisingItem));
    }

    AppFamousAdvertising = jsonRes['AppFamousAdvertising'] == null ? null : [];

    for (var AppFamousAdvertisingItem in AppFamousAdvertising == null ? [] : jsonRes['AppFamousAdvertising']){
      AppFamousAdvertising.add(AppFamousAdvertisingItem == null ? null : new AppFamousEntity.fromJson(AppFamousAdvertisingItem));
    }

    AppGoodsOpt = jsonRes['AppGoodsOpt'] == null ? null : [];

    for (var AppGoodsOptItem in AppGoodsOpt == null ? [] : jsonRes['AppGoodsOpt']){
      AppGoodsOpt.add(AppGoodsOptItem == null ? null : new AppGoodsOptEntity.fromJson(AppGoodsOptItem));
    }

    AppPayAdvertising = jsonRes['AppPayAdvertising'] == null ? null : [];

    for (var AppPayAdvertisingItem in AppPayAdvertising == null ? [] : jsonRes['AppPayAdvertising']){
      AppPayAdvertising.add(AppPayAdvertisingItem == null ? null : new AppPayEntity.fromJson(AppPayAdvertisingItem));
    }

    RED_PACKET_300_1 = jsonRes['RED_PACKET_300_1'] == null ? null : [];

    for (var RED_PACKET_300_1Item in RED_PACKET_300_1 == null ? [] : jsonRes['RED_PACKET_300_1']){
      RED_PACKET_300_1.add(RED_PACKET_300_1Item == null ? null : new RED_PACKET_Entity.fromJson(RED_PACKET_300_1Item));
    }

    TaobaoGoodsOpt = jsonRes['TaobaoGoodsOpt'] == null ? null : [];

    for (var TaobaoGoodsOptItem in TaobaoGoodsOpt == null ? [] : jsonRes['TaobaoGoodsOpt']){
      TaobaoGoodsOpt.add(TaobaoGoodsOptItem == null ? null : new TaobaoGoodsOptEntity.fromJson(TaobaoGoodsOptItem));
    }

    appAdvertising = jsonRes['appAdvertising'] == null ? null : [];

    for (var appAdvertisingItem in appAdvertising == null ? [] : jsonRes['appAdvertising']){
      appAdvertising.add(appAdvertisingItem == null ? null : new AppAdvertisingEntity.fromJson(appAdvertisingItem));
    }

    fourThree = jsonRes['fourThree'] == null ? null : [];

    for (var fourThreeItem in fourThree == null ? [] : jsonRes['fourThree']){
      fourThree.add(fourThreeItem == null ? null : new FourThreeEntity.fromJson(fourThreeItem));
    }

    freeGoodsIndex = jsonRes['freeGoodsIndex'] == null ? null : [];

    for (var freeGoodsIndexItem in freeGoodsIndex == null ? [] : jsonRes['freeGoodsIndex']){
      freeGoodsIndex.add(freeGoodsIndexItem == null ? null : new FreeGoodsIndexEntity.fromJson(freeGoodsIndexItem));
    }

    getAppOptAdvertising = jsonRes['getAppOptAdvertising'] == null ? null : [];

    for (var getAppOptAdvertisingItem in getAppOptAdvertising == null ? [] : jsonRes['getAppOptAdvertising']){
      getAppOptAdvertising.add(getAppOptAdvertisingItem == null ? null : new GetAppOptEntity.fromJson(getAppOptAdvertisingItem));
    }

    getAppSignAdvertising = jsonRes['getAppSignAdvertising'] == null ? null : [];

    for (var getAppSignAdvertisingItem in getAppSignAdvertising == null ? [] : jsonRes['getAppSignAdvertising']){
      getAppSignAdvertising.add(getAppSignAdvertisingItem == null ? null : new GetAppSignEntity.fromJson(getAppSignAdvertisingItem));
    }

    getFirstImage = jsonRes['getFirstImage'] == null ? null : [];

    for (var getFirstImageItem in getFirstImage == null ? [] : jsonRes['getFirstImage']){
      getFirstImage.add(getFirstImageItem == null ? null : new GetFirstImageEntity.fromJson(getFirstImageItem));
    }

    giftImageIndex = jsonRes['giftImageIndex'] == null ? null : [];

    for (var giftImageIndexItem in giftImageIndex == null ? [] : jsonRes['giftImageIndex']){
      giftImageIndex.add(giftImageIndexItem == null ? null : new GiftImageIndexEntity.fromJson(giftImageIndexItem));
    }

    imagePacket = jsonRes['imagePacket'] == null ? null : [];

    for (var imagePacketItem in imagePacket == null ? [] : jsonRes['imagePacket']){
      imagePacket.add(imagePacketItem == null ? null : new ImagePacketEntity.fromJson(imagePacketItem));
    }

    indexBangDan = jsonRes['indexBangDan'] == null ? null : [];

    for (var indexBangDanItem in indexBangDan == null ? [] : jsonRes['indexBangDan']){
      indexBangDan.add(indexBangDanItem == null ? null : new IndexBangDanEntity.fromJson(indexBangDanItem));
    }

    indexCenterBanner = jsonRes['indexCenterBanner'] == null ? null : [];

    for (var indexCenterBannerItem in indexCenterBanner == null ? [] : jsonRes['indexCenterBanner']){
      indexCenterBanner.add(indexCenterBannerItem == null ? null : new IndexCenterBannerEntity.fromJson(indexCenterBannerItem));
    }

    indexFansGoodsImage = jsonRes['indexFansGoodsImage'] == null ? null : [];

    for (var indexFansGoodsImageItem in indexFansGoodsImage == null ? [] : jsonRes['indexFansGoodsImage']){
      indexFansGoodsImage.add(indexFansGoodsImageItem == null ? null : new IndexFansGoodsImageEntity.fromJson(indexFansGoodsImageItem));
    }

    indexPlusGoodsImage = jsonRes['indexPlusGoodsImage'] == null ? null : [];

    for (var indexPlusGoodsImageItem in indexPlusGoodsImage == null ? [] : jsonRes['indexPlusGoodsImage']){
      indexPlusGoodsImage.add(indexPlusGoodsImageItem == null ? null : new IndexPlusGoodImagesEntity.fromJson(indexPlusGoodsImageItem));
    }

    indexTaobaoBanner = jsonRes['indexTaobaoBanner'] == null ? null : [];

    for (var indexTaobaoBannerItem in indexTaobaoBanner == null ? [] : jsonRes['indexTaobaoBanner']){
      indexTaobaoBanner.add(indexTaobaoBannerItem == null ? null : new IndexTaobaoBannerEntity.fromJson(indexTaobaoBannerItem));
    }

    indexTaobaoBannerBG = jsonRes['indexTaobaoBannerBG'] == null ? null : [];

    for (var indexTaobaoBannerBGItem in indexTaobaoBannerBG == null ? [] : jsonRes['indexTaobaoBannerBG']){
      indexTaobaoBannerBG.add(indexTaobaoBannerBGItem == null ? null : new IndexTaobaoBannerBGEntity.fromJson(indexTaobaoBannerBGItem));
    }

    shopingCartAdvertising = jsonRes['shopingCartAdvertising'] == null ? null : [];

    for (var shopingCartAdvertisingItem in shopingCartAdvertising == null ? [] : jsonRes['shopingCartAdvertising']){
      shopingCartAdvertising.add(shopingCartAdvertisingItem == null ? null : new ShopingcartEntity.fromJson(shopingCartAdvertisingItem));
    }

    threeColumn = jsonRes['threeColumn'] == null ? null : [];

    for (var threeColumnItem in threeColumn == null ? [] : jsonRes['threeColumn']){
      threeColumn.add(threeColumnItem == null ? null : new ThreeColumnEntity.fromJson(threeColumnItem));
    }

    weixinQrcodeImage = jsonRes['weixinQrcodeImage'] == null ? null : [];

    for (var weixinQrcodeImageItem in weixinQrcodeImage == null ? [] : jsonRes['weixinQrcodeImage']){
      weixinQrcodeImage.add(weixinQrcodeImageItem == null ? null : new WeixinQrcodeImageEntity.fromJson(weixinQrcodeImageItem));
    }

    weixinQrcodeImagePlus = jsonRes['weixinQrcodeImagePlus'] == null ? null : [];

    for (var weixinQrcodeImagePlusItem in weixinQrcodeImagePlus == null ? [] : jsonRes['weixinQrcodeImagePlus']){
      weixinQrcodeImagePlus.add(weixinQrcodeImagePlusItem == null ? null : new WinxinQrcodeImagePlusEntity.fromJson(weixinQrcodeImagePlusItem));
    }
  }

  @override
  String toString() {
    return '{"AppArticleAdvertising": $AppArticleAdvertising,"AppCenterAdvertising": $AppCenterAdvertising,"AppCouponAdvertising": $AppCouponAdvertising,"AppFamousAdvertising": $AppFamousAdvertising,"AppGoodsOpt": $AppGoodsOpt,"AppPayAdvertising": $AppPayAdvertising,"RED_PACKET_300_1": $RED_PACKET_300_1,"TaobaoGoodsOpt": $TaobaoGoodsOpt,"appAdvertising": $appAdvertising,"fourThree": $fourThree,"freeGoodsIndex": $freeGoodsIndex,"getAppOptAdvertising": $getAppOptAdvertising,"getAppSignAdvertising": $getAppSignAdvertising,"getFirstImage": $getFirstImage,"giftImageIndex": $giftImageIndex,"imagePacket": $imagePacket,"indexBangDan": $indexBangDan,"indexCenterBanner": $indexCenterBanner,"indexFansGoodsImage": $indexFansGoodsImage,"indexPlusGoodsImage": $indexPlusGoodsImage,"indexTaobaoBanner": $indexTaobaoBanner,"indexTaobaoBannerBG": $indexTaobaoBannerBG,"shopingCartAdvertising": $shopingCartAdvertising,"threeColumn": $threeColumn,"weixinQrcodeImage": $weixinQrcodeImage,"weixinQrcodeImagePlus": $weixinQrcodeImagePlus}';
  }
}

class WinxinQrcodeImagePlusEntity {

  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  WinxinQrcodeImagePlusEntity.fromParams({this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  WinxinQrcodeImagePlusEntity.fromJson(jsonRes) {
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
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
    return '{"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class WeixinQrcodeImageEntity {

  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  WeixinQrcodeImageEntity.fromParams({this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  WeixinQrcodeImageEntity.fromJson(jsonRes) {
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
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
    return '{"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class ThreeColumnEntity {

  int activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  ThreeColumnEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  ThreeColumnEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class ShopingcartEntity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  ShopingcartEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  ShopingcartEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class IndexTaobaoBannerBGEntity {

  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  IndexTaobaoBannerBGEntity.fromParams({this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  IndexTaobaoBannerBGEntity.fromJson(jsonRes) {
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
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
    return '{"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class IndexTaobaoBannerEntity {

  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  IndexTaobaoBannerEntity.fromParams({this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  IndexTaobaoBannerEntity.fromJson(jsonRes) {
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
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
    return '{"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": ${seriesNumber != null?'${json.encode(seriesNumber)}':'null'},"isShow": ${isShow != null?'${json.encode(isShow)}':'null'},"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class IndexPlusGoodImagesEntity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  IndexPlusGoodImagesEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  IndexPlusGoodImagesEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class IndexFansGoodsImageEntity {

  String activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  IndexFansGoodsImageEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  IndexFansGoodsImageEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class IndexCenterBannerEntity {

  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  IndexCenterBannerEntity.fromParams({this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  IndexCenterBannerEntity.fromJson(jsonRes) {
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
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
    return '{"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class IndexBangDanEntity {

  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  IndexBangDanEntity.fromParams({this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  IndexBangDanEntity.fromJson(jsonRes) {
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
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
    return '{"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class ImagePacketEntity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  ImagePacketEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  ImagePacketEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class GiftImageIndexEntity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  GiftImageIndexEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  GiftImageIndexEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class GetFirstImageEntity {

  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  GetFirstImageEntity.fromParams({this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  GetFirstImageEntity.fromJson(jsonRes) {
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
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
    return '{"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class GetAppSignEntity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  GetAppSignEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  GetAppSignEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class GetAppOptEntity {

  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  GetAppOptEntity.fromParams({this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  GetAppOptEntity.fromJson(jsonRes) {
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
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
    return '{"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class FreeGoodsIndexEntity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  FreeGoodsIndexEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  FreeGoodsIndexEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": ${imageUsageId != null?'${json.encode(imageUsageId)}':'null'},"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class FourThreeEntity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  FourThreeEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  FourThreeEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class AppAdvertisingEntity {

  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  AppAdvertisingEntity.fromParams({this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  AppAdvertisingEntity.fromJson(jsonRes) {
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
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
    return '{"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class TaobaoGoodsOptEntity {

  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  TaobaoGoodsOptEntity.fromParams({this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  TaobaoGoodsOptEntity.fromJson(jsonRes) {
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
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
    return '{"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": ${imageUsageId != null?'${json.encode(imageUsageId)}':'null'},"seriesNumber": $seriesNumber,"isShow": $isShow,"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class RED_PACKET_Entity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  RED_PACKET_Entity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  RED_PACKET_Entity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class AppPayEntity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  AppPayEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  AppPayEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class AppGoodsOptEntity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  AppGoodsOptEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  AppGoodsOptEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": ${imageUsageId != null?'${json.encode(imageUsageId)}':'null'},"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class AppFamousEntity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  AppFamousEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  AppFamousEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": ${imageUsageId != null?'${json.encode(imageUsageId)}':'null'},"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class AppCouponEntity {

  bool activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  AppCouponEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  AppCouponEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class AppCenterEntity {

  Object activity_id;
  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  AppCenterEntity.fromParams({this.activity_id, this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  AppCenterEntity.fromJson(jsonRes) {
    activity_id = jsonRes['activity_id'];
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
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
    return '{"activity_id": $activity_id,"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class WebstieImageSEntity {

  Object bgImagesUrl;
  int id;
  int imageUsageId;
  int seriesNumber;
  bool isShow;
  String activity_id;
  String color;
  String imagesUrl;
  String keyWord;
  String linkAddress;
  String mobileImagesUrl;
  String previewUrl;
  String title;

  WebstieImageSEntity.fromParams({this.bgImagesUrl, this.id, this.imageUsageId, this.seriesNumber, this.isShow, this.activity_id, this.color, this.imagesUrl, this.keyWord, this.linkAddress, this.mobileImagesUrl, this.previewUrl, this.title});

  WebstieImageSEntity.fromJson(jsonRes) {
    bgImagesUrl = jsonRes['bgImagesUrl'];
    id = jsonRes['id'];
    imageUsageId = jsonRes['imageUsageId'];
    seriesNumber = jsonRes['seriesNumber'];
    isShow = jsonRes['isShow'];
    activity_id = jsonRes['activity_id'];
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
    return '{"bgImagesUrl": $bgImagesUrl,"id": $id,"imageUsageId": $imageUsageId,"seriesNumber": $seriesNumber,"isShow": $isShow,"activity_id": ${activity_id != null?'${json.encode(activity_id)}':'null'},"color": ${color != null?'${json.encode(color)}':'null'},"imagesUrl": ${imagesUrl != null?'${json.encode(imagesUrl)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"linkAddress": ${linkAddress != null?'${json.encode(linkAddress)}':'null'},"mobileImagesUrl": ${mobileImagesUrl != null?'${json.encode(mobileImagesUrl)}':'null'},"previewUrl": ${previewUrl != null?'${json.encode(previewUrl)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'}}';
  }
}

class HomeRecommendEntity {

  Object buildTime;
  Object notId;
  Object typeName;
  int clickTimes;
  int hotArticle;
  int id;
  int isShowType;
  int status;
  int type;
  String author;
  String content;
  String createTime;
  String description;
  String keyWord;
  String link;
  String meta;
  String picture;
  String property;
  String title;
  String updateTime;

  HomeRecommendEntity.fromParams({this.buildTime, this.notId, this.typeName, this.clickTimes, this.hotArticle, this.id, this.isShowType, this.status, this.type, this.author, this.content, this.createTime, this.description, this.keyWord, this.link, this.meta, this.picture, this.property, this.title, this.updateTime});

  HomeRecommendEntity.fromJson(jsonRes) {
    buildTime = jsonRes['buildTime'];
    notId = jsonRes['notId'];
    typeName = jsonRes['typeName'];
    clickTimes = jsonRes['clickTimes'];
    hotArticle = jsonRes['hotArticle'];
    id = jsonRes['id'];
    isShowType = jsonRes['isShowType'];
    status = jsonRes['status'];
    type = jsonRes['type'];
    author = jsonRes['author'];
    content = jsonRes['content'];
    createTime = jsonRes['createTime'];
    description = jsonRes['description'];
    keyWord = jsonRes['keyWord'];
    link = jsonRes['link'];
    meta = jsonRes['meta'];
    picture = jsonRes['picture'];
    property = jsonRes['property'];
    title = jsonRes['title'];
    updateTime = jsonRes['updateTime'];
  }

  @override
  String toString() {
    return '{"buildTime": $buildTime,"notId": $notId,"typeName": $typeName,"clickTimes": $clickTimes,"hotArticle": $hotArticle,"id": $id,"isShowType": $isShowType,"status": $status,"type": $type,"author": ${author != null?'${json.encode(author)}':'null'},"content": ${content != null?'${json.encode(content)}':'null'},"createTime": ${createTime != null?'${json.encode(createTime)}':'null'},"description": ${description != null?'${json.encode(description)}':'null'},"keyWord": ${keyWord != null?'${json.encode(keyWord)}':'null'},"link": ${link != null?'${json.encode(link)}':'null'},"meta": ${meta != null?'${json.encode(meta)}':'null'},"picture": ${picture != null?'${json.encode(picture)}':'null'},"property": ${property != null?'${json.encode(property)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'},"updateTime": ${updateTime != null?'${json.encode(updateTime)}':'null'}}';
  }
}

