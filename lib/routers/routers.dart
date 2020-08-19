import 'package:fluro/fluro.dart';
import 'package:fluttercc/routers/router_handler.dart';


class Routes{
  static String root= '/';
  static String detailPage = '/detail';

  static void configureRoutes(Router router){
    router.notFoundHandler = Handler(
      // ignore: missing_return
      handlerFunc: (context,params){
        print('ERROR========>ROUTE WAS NOT FOUND!!');
      }
    );
    router.define(detailPage, handler: detailHandler);
  }
}