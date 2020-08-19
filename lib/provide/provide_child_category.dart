import 'package:flutter/material.dart';
import 'package:fluttercc/bean/category_goods_opt_list_result.dart';
import '../bean/category_child_opt_result.dart';

class ChildCategory with ChangeNotifier {
  List<EntityListBean> childCategoryList = [];
  List<CategoryGoods> categoryGoodsList = [];
  int optId=305;
  int childIndex = 0;
  int page = 1; //列表页数,当改变大类或者小类时进行改变
  String noMoreText = ''; //显示更多的标识

  setChildCategory(List list) {
    childCategoryList = list;
    page = 1;
    noMoreText = '';
    notifyListeners();
  }

  setCategoryGoodsList(List list) {
    categoryGoodsList = list;
    notifyListeners();
  }

  setOptId(int optId) {
    this.optId = optId;
    notifyListeners();
  }

  changeChildIndex(index) {
    childIndex = index;
    page = 1;
    noMoreText = '';
    notifyListeners();
  }

  //增加page的方法
  addPage() {
    page++;
  }

  //改变noMoreText数据
  changeNoMore(String text) {
    noMoreText = text;
    notifyListeners();
  }

  addGoodsList(List<CategoryGoods> list) {
    categoryGoodsList.addAll(list);
    notifyListeners();
  }
}
