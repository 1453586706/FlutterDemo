import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:fluttercc/provide/CurrentIndexProvide.dart';
import 'package:fluttercc/provide/cart.dart';
import 'package:fluttercc/provide/counter.dart';
import 'package:fluttercc/provide/provide_child_category.dart';
import 'package:fluttercc/provide/provide_detail_info.dart';
import 'package:provide/provide.dart';
import './page/index_page.dart';
import './routers/application.dart';
import './routers/routers.dart';

void main() {
  var counter = Counter();
  var childCategory = ChildCategory();
  var detailInfo = DetailsInfoProvide();
  var cartProvide = CartProvide();
  var currentIndexProvide = CurrentIndexProvide();
  var providers = Providers();
  providers..provide(Provider<Counter>.value(counter))..provide(
      Provider<ChildCategory>.value(childCategory))..provide(
      Provider<DetailsInfoProvide>.value(detailInfo))..provide(
      Provider<CurrentIndexProvide>.value(currentIndexProvide))..provide(
      Provider<CartProvide>.value(cartProvide));

  runApp(ProviderNode(
    child: MyApp(),
    providers: providers,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
    return Container(
      child: MaterialApp(
        title: '百姓生活+',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: IndexPage(),
        onGenerateRoute: Application.router.generator,
      ),
    );
  }
}
