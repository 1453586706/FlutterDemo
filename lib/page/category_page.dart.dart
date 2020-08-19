import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttercc/bean/category_child_opt_result.dart';
import 'package:fluttercc/bean/category_goods_opt_list_result.dart';
import 'package:fluttercc/bean/category_parent_opt_result.dart';
import 'package:fluttercc/provide/provide_child_category.dart';
import 'package:fluttercc/routers/application.dart';
import 'package:fluttercc/service/service_method.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provide/provide.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<GoodsOptListListBean> parentList;

  var listIndex = 0; //索引

  Widget _leftInkWell(index) {
    bool isClick = false;
    isClick = (index == listIndex) ? true : false;
    return InkWell(
      onTap: () {
        setState(() {
          listIndex = index;
        });
        _getCategoryChild(parentList[index].optId);
        Provide.value<ChildCategory>(context).setOptId(parentList[index].optId);
      },
      child: Container(
        alignment: Alignment.center,
        height: ScreenUtil().setHeight(100),
        decoration: BoxDecoration(
            color: isClick ? Colors.black26 : Colors.white,
            border:
                Border(bottom: BorderSide(width: 1, color: Colors.black12))),
        child: Text(
          parentList[index].optName,
          style: TextStyle(fontSize: ScreenUtil().setSp(28)),
        ),
      ),
    );
  }

  //请求左侧一级分类
  Future _getCategory() async {
    await request('getGoodsOpt', {'parent_opt_id': 0}).then((val) {
      parentList = CategoryParentOptResult.fromJson(val)
          .entity
          .goodsOptGetResponse
          .goodsOptList;
    });
    return parentList;
  }

  //请求右侧上方二级分类
  void _getCategoryChild(int optId) async {
    await request('getGoodsOpt', {'parent_opt_id': optId}).then((val) {
      Provide.value<ChildCategory>(context)
          .setChildCategory(CategoryChildOptResult.fromJson(val).entity);
      _getCategoryGoodsList(
          1, Provide.value<ChildCategory>(context).childCategoryList[0].optId);
      Provide.value<ChildCategory>(context).changeChildIndex(0);
    });
  }

  //请求右侧下方三级分类,商品列表
  void _getCategoryGoodsList(int page, int optId) async {
    var data = {'page': page, 'opt_id': optId};
    await request('categoryGoods', data).then((val) {
      Provide.value<ChildCategory>(context).setCategoryGoodsList(
          GoodsOptListResult.fromJson(val)
              .entity
              .goods_search_response
              .goods_list);
    });
  }

  @override
  void initState() {
    _getCategory();
    _getCategoryChild(14);
    super.initState();
  }

  //左侧一级目录列表
  Widget _leftCategoryNav() {
    return Container(
      width: ScreenUtil().setWidth(180),
      decoration: BoxDecoration(
          border: Border(
        right: BorderSide(width: 1, color: Colors.black12),
      )),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return _leftInkWell(index);
        },
        itemCount: parentList.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 1333, width: 750);
    return Scaffold(
      appBar: AppBar(
        title: Text('分类'),
      ),
      body: Container(
          child: Row(
        children: <Widget>[
          FutureBuilder(
            future: _getCategory(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return _leftCategoryNav();
              } else {
                return Center(
                  child: Text('加载中'),
                );
              }
            },
          ),
          Column(
            children: <Widget>[
              RightCategoryNav(),
              CategoryGoodsList(),
            ],
          )
        ],
      )),
    );
  }
}

// ignore: must_be_immutable
class RightCategoryNav extends StatefulWidget {
  @override
  _RightCategoryNavState createState() => _RightCategoryNavState();
}

class _RightCategoryNavState extends State<RightCategoryNav> {
  List<CategoryGoods> goodsList = [];

  void _getCategoryGoodsList(int page, int optId) async {
    var data = {'page': page, 'opt_id': optId};
    await request('categoryGoods', data).then((val) {
      goodsList = GoodsOptListResult.fromJson(val)
          .entity
          .goods_search_response
          .goods_list;
      Provide.value<ChildCategory>(context).setCategoryGoodsList(goodsList);
    });
  }

  Widget _rightInkWell(int index, EntityListBean item) {
    bool isClick = false;
    isClick = (index == Provide.value<ChildCategory>(context).childIndex)
        ? true
        : false;
    return InkWell(
      onTap: () {
        _getCategoryGoodsList(1, item.optId);
        Provide.value<ChildCategory>(context).changeChildIndex(index);
        Provide.value<ChildCategory>(context).setOptId(item.optId);
      },
      child: Container(
        color: isClick ? Colors.pink : Colors.white,
        padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
        child: Text(
          item.optName,
          style: TextStyle(fontSize: ScreenUtil().setSp(28)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Provide<ChildCategory>(
      builder: (context, child, childCategory) {
        return Container(
          height: ScreenUtil().setHeight(80),
          width: ScreenUtil().setWidth(570),
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border(bottom: BorderSide(width: 1, color: Colors.black12))),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return _rightInkWell(
                  index, childCategory.childCategoryList[index]);
            },
            itemCount: childCategory.childCategoryList.length,
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}

//右侧商品列表
class CategoryGoodsList extends StatefulWidget {
  @override
  _CategoryGoodsListState createState() => _CategoryGoodsListState();
}

class _CategoryGoodsListState extends State<CategoryGoodsList> {
  void _getCategoryGoodsList() async {
    var data = {
      'page': Provide.value<ChildCategory>(context).page,
      'opt_id': Provide.value<ChildCategory>(context).optId
    };
    await request('categoryGoods', data).then((val) {
      print('data:' + data.toString());
      var goodsList = GoodsOptListResult.fromJson(val)
          .entity
          .goods_search_response
          .goods_list;
      if (goodsList == null) {
        Provide.value<ChildCategory>(context).changeNoMore('没有更多了');
      } else {
        Provide.value<ChildCategory>(context).addGoodsList(goodsList);
      }
    });
  }

  //商品图片
  Widget _goodsImage(index) {
    return Container(
      width: ScreenUtil().setWidth(200),
      child: Image.network(Provide.value<ChildCategory>(context)
          .categoryGoodsList[index]
          .goods_image_url),
    );
  }

  //商品名称
  Widget _goodsName(index) {
    return Container(
      width: ScreenUtil().setWidth(370),
      padding: EdgeInsets.all(5.0),
      child: Text(
        Provide.value<ChildCategory>(context)
            .categoryGoodsList[index]
            .goods_name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: ScreenUtil().setSp(28)),
      ),
    );
  }

  //商品价格
  Widget _goodsPrice(index) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: ScreenUtil().setWidth(370),
      child: Row(
        children: <Widget>[
          Text(
            '价格:¥${Provide.value<ChildCategory>(context).categoryGoodsList[index].min_group_price / 100}',
            style:
                TextStyle(color: Colors.pink, fontSize: ScreenUtil().setSp(30)),
          ),
          Text(
            '原价:¥${Provide.value<ChildCategory>(context).categoryGoodsList[index].min_normal_price / 100}',
            style: TextStyle(
                color: Colors.black26, decoration: TextDecoration.lineThrough),
          )
        ],
      ),
    );
  }

  //构建商品item
  Widget _listWidgetItem(index) {
    return InkWell(
      onTap: () {
        Application.router.navigateTo(context,
            '/detail?id=${Provide.value<ChildCategory>(context).categoryGoodsList[index].goods_id}');
      },
      child: Container(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border(bottom: BorderSide(width: 1.0, color: Colors.black12))),
        child: Row(
          children: <Widget>[
            _goodsImage(index),
            Column(
              children: <Widget>[_goodsName(index), _goodsPrice(index)],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var scrollController = ScrollController();
    ScreenUtil.init(context, width: 750, height: 1333);

    return Provide<ChildCategory>(
      builder: (context, child, data) {
        try {
          if (Provide.value<ChildCategory>(context).page == 1) {
            scrollController.jumpTo(0.0);
          }
        } catch (e) {
          print('进入页面第一次初始化:$e');
        }
        return Expanded(
          child: Container(
              width: ScreenUtil().setWidth(570),
              child: EasyRefresh(
                child: ListView.builder(
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    return _listWidgetItem(index);
                  },
                  itemCount: data.categoryGoodsList.length,
                ),
                footer: ClassicalFooter(
                    bgColor: Colors.white,
                    textColor: Colors.pink,
                    infoColor: Colors.pink,
                    showInfo: true,
                    noMoreText:
                        Provide.value<ChildCategory>(context).noMoreText,
                    infoText: '加载中',
                    loadReadyText: '上拉加载',
                    loadedText: '加载完成',
                    loadingText: '正在加载',
                    loadText: '上拉加载'),
                onLoad: () async {
                  Provide.value<ChildCategory>(context).addPage();
                  _getCategoryGoodsList();
                },
              )),
        );
      },
    );
  }
}
