import 'package:flutter/material.dart';
import 'package:fluttercc/bean/cart_info_result.dart';
import 'package:fluttercc/provide/cart.dart';
import 'package:provide/provide.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'cart_bottom.dart';
import 'cart_item.dart';

class CartPage extends StatelessWidget {
  Future<String> _getCartInfo(context) async {
    await Provide.value<CartProvide>(context).getCartInfo();
    return 'end';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车'),
      ),
      body: FutureBuilder(
        future: _getCartInfo(context),
        builder: (context, snapshot) {
          List<CartInfoResult> cartList =
              Provide.value<CartProvide>(context).cartList;
          if (snapshot.hasData) {
            return Stack(
              children: <Widget>[
                Provide<CartProvide>(
                  builder: (context, child, childCategory) {
                    cartList = Provide.value<CartProvide>(context).cartList;
                    print(cartList);
                    return ListView.builder(
                        itemCount: cartList.length,
                        itemBuilder: (context, index) {
                          return CartItem(
                            item: cartList[index],
                          );
                        });
                  },
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: CartBottom(),
                )
              ],
            );
          } else {
            return Text('正在加载');
          }
        },
      ),
    );
  }
}
