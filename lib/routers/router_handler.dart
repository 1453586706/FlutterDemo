import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../page/detail_page/detail_page.dart';

Handler detailHandler =  Handler(
  handlerFunc: (context,params){
    String goodsId=params['id'].first;
    return DetailPage(goodsId: goodsId,);
  }
);