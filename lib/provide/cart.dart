import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../bean/cart_info_result.dart';

class CartProvide with ChangeNotifier {
  String cartString = "[]";
  List<CartInfoResult> cartList = [];
  double allPrice = 0; //总价格
  int allGoodsCount = 0; //商品的总数量
  bool isAllCheck = true; //是否全选

  save(goodsId, goodsName, count, price, images) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    cartString = sharedPreferences.getString('cartInfo'); //获取持久化存储的值
    //判断cartString是否为空,为空说明是第一次添加,或者key被清除掉了
    //如果有值进行decode操作
    var temp = cartString == null ? [] : json.decode(cartString.toString());
    //把获得的值转换成list
    List<Map> tempList = (temp as List).cast();
    //声明变量,用于判断购物车中是否已经存在此商品ID
    var isHave = false;
    int ival = 0; //用于进行循环的索引使用
    allPrice = 0;
    allGoodsCount = 0;
    tempList.forEach((item) {
      //进行循环,找出是否已经存在该商品
      //如果存在,数量进行+1操作
      if (item['goodsId'] == goodsId) {
        tempList[ival]['count'] = item['count'] + 1;
        cartList[ival].count++;
        isHave = true;
      }
      if (item['isCheck']) {
        allPrice += (cartList[ival].price * cartList[ival].count);
        allGoodsCount += cartList[ival].count;
      }

      ival++;
    });

    if (!isHave) {
      Map<String, dynamic> newGoods = {
        'goodsId': goodsId,
        'goodsName': goodsName,
        'count': count,
        'price': price,
        'images': images,
        'isCheck': true //是否已经选择
      };
      tempList.add(newGoods);
      cartList.add(new CartInfoResult.fromJson(newGoods));
      allPrice += (count * price);
      allGoodsCount += count;
    }
    //把字符串进行encode操作
    cartString = json.encode(tempList).toString();
    sharedPreferences.setString('cartInfo', cartString);
    notifyListeners();
  }

  remove() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove('cartInfo');
    print('清空完成---------');
    notifyListeners();
  }

  //得到购物车中商品的方法
  getCartInfo() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    //获得购物车中的商品,这时候是一个字符串
    cartString = sharedPreferences.getString('cartInfo');
    //把cartList进行初始化,防止数据混乱
    cartList = [];
    //判断的到的字符串是否有值,如果不判断会报错
    if (cartString == null) {
      cartList = [];
    } else {
      List<Map> tempList = (json.decode(cartString.toString()) as List).cast();
      allPrice = 0;
      allGoodsCount = 0;
      isAllCheck = true;
      tempList.forEach((item) {
        if (item['isCheck']) {
          allPrice += item['count'] * item['price'];
          allGoodsCount += item['count'];
        } else {
          isAllCheck = false;
        }
        cartList.add(new CartInfoResult.fromJson(item));
      });
    }
    notifyListeners();
  }

  //删除单个购物车商品
  deleteOneGoods(int goodsId) async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    cartString = sharedPreference.getString('cartInfo');
    List<Map> tempList = (json.decode(cartString.toString()) as List).cast();

    int tempIndex = 0;
    int deleteIndex = 0;
    tempList.forEach((item) {
      if (item['goodsId'] == goodsId) {
        deleteIndex = tempIndex;
      }
      tempIndex++;
    });
    tempList.removeAt(deleteIndex);
    cartString = json.encode(tempList).toString();
    sharedPreference.setString('cartInfo', cartString);
    await getCartInfo();
  }

  //修改选中状态
  changeCheckState(CartInfoResult cartItem) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    cartString = sharedPreferences.getString('cartInfo');
    List<Map> tempList = (json.decode(cartString.toString()) as List).cast();
    int tempIndex = 0;
    int changeIndex = 0;
    tempList.forEach((item) {
      if (item['goodsId'] == cartItem.goodsId) {
        changeIndex = tempIndex;
      }
      tempIndex++;
    });
    tempList[changeIndex] = cartItem.toJson(); //把字符串转换成json对象
    cartString = json.encode(tempList).toString(); //转换为字符串
    sharedPreferences.setString('cartInfo', cartString);
    await getCartInfo();
  }

  //点击全选按钮操作
  changeAllCheckBtnState(bool isCheck) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    cartString = sharedPreferences.getString('cartInfo');
    List<Map> tempList = (json.decode(cartString.toString()) as List).cast();
    List<Map> newList = []; //新建一个list,用于组成新的持久化数据
    for (var item in tempList) {
      var newItem = item; //赋值新的变量,因为在Dart中不让循环时修改原值
      newItem['isCheck'] = isCheck;
      newList.add(newItem);
    }
    cartString = json.encode(newList).toString(); //形成字符串
    sharedPreferences.setString('cartInfo', cartString);
    await getCartInfo();
  }

  //加减购物车item数量 todo:加或者减的操作
  addOrReduceAction(CartInfoResult cartItem, String todo) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    cartString = sharedPreferences.getString('cartInfo');
    List<Map> tempList = (json.decode(cartString.toString()) as List).cast();
    int tempIndex = 0;
    int changeIndex = 0;
    tempList.forEach((item) {
      if (item['goodsId'] == cartItem.goodsId) {
        changeIndex = tempIndex;
      }
      tempIndex++;
    });
    if (todo == 'add') {
      cartItem.count++;
    } else if (cartItem.count > 1) {
      cartItem.count--;
    }
    tempList[changeIndex] = cartItem.toJson();
    cartString = json.encode(tempList).toString();
    sharedPreferences.setString('cartInfo', cartString);
    await getCartInfo();
  }
}
