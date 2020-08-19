const baseUrl = 'http://www.58cangshu.com/';
//const baseUrl='http://192.168.1.1';//开发环境,内网环境下
//const baseUrl='http://202.96.67.87';//线上ip,
const servicePath = {
  //商城首页轮播图
  'homePageBanner': baseUrl +
      'app/v2/getAppAdvertising?withBg=1&device_type=ANDROID&imageType=indexTaobaoBanner&token=',
  //商城首页导航栏
  'homeTopNavigator': baseUrl + 'app/tk/taobao/getHomeOptIcon',
  //商城首页广告栏
  'homeAD': baseUrl + 'app/tk/v2/getIndex',
  //商城首页推荐商品
  'homeRecommend': baseUrl +
      'app/tk/v2/getChaoJiBaoKuan?token=29fca99630f10f1b2dd354a19fb37ad9',
  //商城首页火爆专区
  'getGoodsHomePagSearch': baseUrl +
      'app/tk/taobao/getGoodsHomePagSearch?device_type=ANDROID&opt_id=-99&token=',
  //分类页面获取一级目录
  'getGoodsOpt': baseUrl + 'app/tk/v2/getGoodsOpt?',
  //分类页面获取商品列表
  'categoryGoods': baseUrl + '/app/getGoodsSearch?page_size=10&sort_type=0',
  //获取商品详情
  'getGoodsDetailSingle':
      baseUrl + '/app/getGoodsDetailSingle?threePosition=pdd',
  //获取商品web页
  'getGoodsDetailDes':baseUrl+'/app/getGoodsDetailDes',
};
