import 'package:flutter/material.dart';
import 'package:fluttercc/provide/provide_detail_info.dart';
import 'package:provide/provide.dart';
import 'detail_bottom.dart';
import 'detail_explain.dart';
import 'detail_tabbar.dart';
import 'detail_top_area.dart';
import 'detail_web.dart';

class DetailPage extends StatelessWidget {
  final String goodsId;

  const DetailPage({Key key, this.goodsId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _getBackInfo(context, goodsId);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('商品详情页'),
      ),
      body: FutureBuilder(
        future: _getBackInfo(context, goodsId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Stack(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    DetailTopArea(),
                    DetailExplain(),
                    DetailTabBar(),
                    DetailWeb(),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: DetailBottom(),
                )
              ],
            );
          } else {
            return Text('加载中....');
          }
        },
      ),
    );
  }

  Future _getBackInfo(context, id) async {
    await Provide.value<DetailsInfoProvide>(context).getGoodsInfo(id);
    await Provide.value<DetailsInfoProvide>(context).getGoodsWebInfo(id);
    return '加载完成';
  }
}
