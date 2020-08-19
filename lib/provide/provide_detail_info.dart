import 'package:flutter/material.dart';
import 'package:fluttercc/bean/detail_web_result.dart';
import '../bean/detail_result.dart';
import '../service/service_method.dart';

class DetailsInfoProvide with ChangeNotifier {
  GoodsDetailsListBean goodsInfo;
  bool isLeft = true;
  bool isRight = false;
  DetailWebBean detailWebBean;

  //从后台获取信息
  getGoodsInfo(String id) async {
    var formData = {'goods_id': id};
    await request('getGoodsDetailSingle', formData).then((val) {
      goodsInfo =
          DetailResult.fromJson(val).entity.goodsDetailResponse.goodsDetails[0];
      notifyListeners();
    });
  }

  //获取web页信息
  getGoodsWebInfo(String id) async {
    var formData = {'goods_id': id};
    await request("getGoodsDetailDes", formData).then((val) {
      detailWebBean = DetailWebResult.fromJson(val).entity;
      notifyListeners();
    });
  }

  //改编tabBar的状态
  changeLeftAndRight(String changeState) {
    if (changeState == 'left') {
      isLeft = true;
      isRight = false;
    } else {
      isLeft = false;
      isRight = true;
    }
    notifyListeners();
  }
}
