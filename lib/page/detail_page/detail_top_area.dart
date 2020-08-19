import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../../provide/provide_detail_info.dart';
import 'package:flutter_screenutil/screenutil.dart';

class DetailTopArea extends StatelessWidget {
  //商品图片
  Widget _goodsImage(url) {
    return Image.network(
      url,
      width: ScreenUtil().setWidth(740),
    );
  }

  //商品名称
  Widget _goodsName(name) {
    return Container(
      width: ScreenUtil().setWidth(730),
      padding: EdgeInsets.only(left: 15.0),
      margin: EdgeInsets.only(top: 8.0),
      child: Text(
        name,
        maxLines: 2,
        style: TextStyle(fontSize: ScreenUtil().setSp(30)),
      ),
    );
  }

  //商品编号
  Widget _goodsNum(num) {
    return Container(
      width: ScreenUtil().setWidth(730),
      padding: EdgeInsets.only(left: 15.0),
      margin: EdgeInsets.only(top: 8.0),
      child: Text(
        '编号:$num',
        style: TextStyle(
          color: Colors.black26,
        ),
      ),
    );
  }

  //商品价格
  Widget _goodsPrice(min_normal_price, min_group_price) {
    return Container(
      width: ScreenUtil().setWidth(730),
      padding: EdgeInsets.only(left: 15.0),
      margin: EdgeInsets.only(top: 8.0),
      child: Row(
        children: <Widget>[
          Text(
            '团购价:¥${min_group_price/100}',
            style: TextStyle(
                color: Colors.pinkAccent, fontSize: ScreenUtil().setSp(40)),
          ),
          Text(
            '市场价:¥${min_normal_price/100}',
            style: TextStyle(
                color: Colors.black26, decoration: TextDecoration.lineThrough),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
    return Provide<DetailsInfoProvide>(
      builder: (context, child, val) {
        var goodsInfo = Provide.value<DetailsInfoProvide>(context).goodsInfo;
        if (goodsInfo != null) {
          return Container(
            color: Colors.white,
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: <Widget>[
                _goodsImage(goodsInfo.goodsImageUrl),
                _goodsName(goodsInfo.goodsName),
                _goodsNum(goodsInfo.goodsId),
                _goodsPrice(goodsInfo.minNormalPrice, goodsInfo.minGroupPrice),
              ],
            ),
          );
        } else {
          return Text('正在加载中...');
        }
      },
    );
  }
}
