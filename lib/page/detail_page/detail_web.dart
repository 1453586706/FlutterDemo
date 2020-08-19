import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fai_webview/flutter_fai_webview.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:provide/provide.dart';
import '../../provide/provide_detail_info.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class DetailWeb extends StatelessWidget {

  Widget html = Provide<DetailsInfoProvide>(
    builder: (context, child, val) {
      return
        Html(
        data: Provide.value<DetailsInfoProvide>(context).detailWebBean.pddUrl,
//        data: """
//        <div>
//          <h1>Demo Page</h1>
//          <p>This is a fantastic product that you should buy!</p>
//          <h3>Features</h3>
//          <ul>
//            <li>It actually works</li>
//            <li>It exists</li>
//            <li>It doesn't cost much!</li>
//          </ul>
//          <!--You can pretty much put any html in here!-->
//        </div>
//      """,
        //Optional parameters:
        backgroundColor: Colors.white70,
        onLinkTap: (url) {
          // open url in a webview
        },
        onImageTap: (src) {
          // Display the image in large form.
        },
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Provide<DetailsInfoProvide>(
      builder: (context, child, val) {
        var isLeft = Provide.value<DetailsInfoProvide>(context).isLeft;
        if (isLeft) {
          return html;
        } else {
          return Container(
            width: ScreenUtil().setWidth(750),
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text('暂时没有数据'),
          );
        }
      },
    );
  }
}
