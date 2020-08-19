import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/material_footer.dart';
import 'package:flutter_easyrefresh/material_header.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttercc/bean/home_ad_result.dart';
import 'package:fluttercc/bean/home_banner_result.dart';
import 'package:fluttercc/bean/home_recommend_result.dart';
import 'package:fluttercc/bean/home_top_navigator_result.dart';
import 'package:fluttercc/bean/hot_goods_list_result.dart';
import 'package:fluttercc/config/service_url.dart';
import 'package:fluttercc/routers/application.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:fluttercc/service/service_method.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  String homePageBanner = '正在获取数据';
  int page = 1;
  List<HotGoodsListBean> hotGoodsList = [];

  //火爆专区标题
  Widget hotTitle = Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.all(5.0),
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Colors.black12),
        )),
    child: Text('火爆专区'),
  );

  //火爆专区的list
  Widget _wrapList() {
    if (hotGoodsList != null) {
      List<Widget> listWidget = hotGoodsList.map((val) {
        return InkWell(
          onTap: () {
            Application.router.navigateTo(context, '/detail?id=${val.goodsId}');
          },
          child: Container(
            width: ScreenUtil().setWidth(372),
            color: Colors.white,
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(bottom: 3.0),
            child: Column(
              children: <Widget>[
                Image.network(val.goodsImageUrl),
                Text(
                  val.goodsName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.pink, fontSize: ScreenUtil().setSp(26)),
                ),
                Row(
                  children: <Widget>[
                    Text('团购价:${val.couponPrice / 100}'),
                    Text(
                      '原价:${val.minGroupPrice / 100}',
                      style: TextStyle(
                          color: Colors.black26,
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }).toList();
      return Wrap(
        spacing: 2,
        children: listWidget,
      );
    } else {
      return Text(' ');
    }
  }

  Widget _hotGoods() {
    return Container(
      child: Column(
        children: <Widget>[hotTitle, _wrapList()],
      ),
    );
  }

  void _getHotGoods() {
    var formData = {'page': page};
    request('getGoodsHomePagSearch', formData).then((val) {
      List<HotGoodsListBean> newList =
          HotGoodsListResult.fromJson(val).entity.goodsSearchResponse.goodsList;
      setState(() {
        hotGoodsList.addAll(newList);
        page++;
      });
    });
  }

  @override
  void initState() {
//    request('homeRecommend', {'page': 1}).then((val) {
//      print(val);
//    });
    _getHotGoods();
    print('页面初始化');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334); //以Iphone6尺寸为基准,设计图尺寸
    return Scaffold(
        appBar: AppBar(
          title: Text('百姓生活+'),
        ),
        body: EasyRefresh(
          onLoad: () async {
            _getHotGoods();
          },
          footer: ClassicalFooter(
              bgColor: Colors.white,
              textColor: Colors.pink,
              infoColor: Colors.pink,
              showInfo: true,
              noMoreText: '',
              infoText: '加载中',
              loadReadyText: '上拉加载',
              loadedText: '加载完成',
              loadingText: '正在加载',
              loadText: '上拉加载'),
          onRefresh: () async {},
          header: ClassicalHeader(
              bgColor: Colors.white,
              textColor: Colors.pink,
              infoColor: Colors.pink,
              showInfo: true,
              noMoreText: '',
              infoText: '刷新中',
              refreshReadyText: '下拉刷新',
              refreshedText: '刷新完成',
              refreshingText: '正在刷新',
              refreshText: '下拉刷新'),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                FutureBuilder(
                  future: request('homePageBanner', null),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<HomeBannerBean> swipeDataList =
                          HomeBannerResult.fromJson(snapshot.data)
                              .entity; //json序列化返回的数据
                      return Column(
                        children: <Widget>[
                          SwiperDiy(
                            swiperDataList: swipeDataList,
                          )
                        ],
                      );
                    } else {
                      return Center(
                        child: Text('加载中'),
                      );
                    }
                  },
                ),
                FutureBuilder(
                  future: request('homeTopNavigator', null),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<HomeTopNavigatorBean> topNavigatorList =
                          HomeTopNavigatorResult.fromJson(snapshot.data)
                              .entity[0];
                      return Column(
                        children: <Widget>[
                          TopNavigator(
                            navigatorList: topNavigatorList,
                          )
                        ],
                      );
                    } else {
                      return Center(
                        child: Text('加载中'),
                      );
                    }
                  },
                ),
                FutureBuilder(
                  future: request('homeTopNavigator', null),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<HomeTopNavigatorBean> topNavigatorList =
                          HomeTopNavigatorResult.fromJson(snapshot.data)
                              .entity[1];
                      return Column(
                        children: <Widget>[
                          TopNavigator(
                            navigatorList: topNavigatorList,
                          )
                        ],
                      );
                    } else {
                      return Center(
                        child: Text('加载中'),
                      );
                    }
                  },
                ),
                FutureBuilder(
                  future: request('homeAD', null),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<HomeRecommendEntity> homeADList =
                          HomeADResult.fromJson(snapshot.data)
                              .entity
                              .homeRecommend; //json序列化返回的数据
                      return Column(
                        children: <Widget>[
                          SwiperDiy(
                            homeADList: homeADList,
                          )
                        ],
                      );
                    } else {
                      return Center(
                        child: Text('加载中'),
                      );
                    }
                  },
                ),
                FutureBuilder(
                  future: request('homeRecommend', null),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<GoodsListListBean> recommendList =
                          HomeRecommendResult.fromJson(snapshot.data)
                              .entity
                              .goodsSearchResponse
                              .goodsList; //json序列化返回的数据
                      return RecommendWidget(
                        recommendList: recommendList,
                      );
                    } else {
                      return Center(
                        child: Text('加载中'),
                      );
                    }
                  },
                ),
                _hotGoods()
              ],
            ),
          ),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}

//轮播图控件
class SwiperDiy extends StatelessWidget {
  final List<HomeBannerBean> swiperDataList;
  final List<HomeRecommendEntity> homeADList;

  const SwiperDiy({Key key, this.swiperDataList, this.homeADList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334); //以Iphone6尺寸为基准,设计图尺寸
//    print('设备宽度:${ScreenUtil.screenWidth}');
//    print('设备高度:${ScreenUtil.screenHeight}');
//    print('设备像素密度:${ScreenUtil.pixelRatio}');
    return Container(
      height: ScreenUtil().setHeight(swiperDataList != null ? 333 : 500),
      width: ScreenUtil().setWidth(750),
      child: Swiper(
        itemCount:
            swiperDataList != null ? swiperDataList.length : homeADList.length,
        itemBuilder: (context, index) {
          return Image.network(
            '${baseUrl + (swiperDataList != null ? swiperDataList[index].imagesUrl : homeADList[index].picture)}',
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
      ),
    );
  }
}

//导航控件
class TopNavigator extends StatelessWidget {
  final List<HomeTopNavigatorBean> navigatorList;

  const TopNavigator({Key key, this.navigatorList}) : super(key: key);

  Widget _gridViewItemUI(BuildContext context, HomeTopNavigatorBean item) {
    return InkWell(
      onTap: () {
        print('点击了导航:${item.opt_id}');
      },
      child: Column(
        children: <Widget>[
          Image.network(
            '${baseUrl + item.imagesUrl}',
            width: ScreenUtil().setWidth(95),
          ),
          Text('${item.title}')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(180),
      padding: EdgeInsets.all(3.0),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 5,
        padding: EdgeInsets.all(4.0),
        children: navigatorList.map((item) {
          return _gridViewItemUI(context, item);
        }).toList(),
      ),
    );
  }
}

//推荐商品
class RecommendWidget extends StatelessWidget {
  final List<GoodsListListBean> recommendList;

  const RecommendWidget({Key key, this.recommendList}) : super(key: key);

  //商品推荐的标题
  Widget _titleWidget() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(10.0, 2.0, 0, 5.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
      child: Text('商品推荐'),
    );
  }

  //商品推荐的item
  Widget _item(context,index) {
    return InkWell(
      onTap: () {
        Application.router.navigateTo(context, '/detail?id=${recommendList[index].goodsId}');
      },
      child: Container(
        height: ScreenUtil().setHeight(330),
        width: ScreenUtil().setWidth(250),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border(left: BorderSide(width: 0.5, color: Colors.black12))),
        child: Column(
          children: <Widget>[
            Image.network('${recommendList[index].goodsImageUrl}'),
            Text('团购价:${(recommendList[index].minGroupPrice) / 100}'),
            Text(
              '原价:${(recommendList[index].minNormalPrice) / 100}',
              style: TextStyle(
                  decoration: TextDecoration.lineThrough, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  //横向滚动的list
  Widget _recommendList() {
    return Container(
      height: ScreenUtil().setHeight(330),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return _item(context,index);
        },
        itemCount: recommendList.length,
        scrollDirection: Axis.horizontal, //可以横向滚动
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(390),
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          _titleWidget(),
          _recommendList(),
        ],
      ),
    );
  }
}
