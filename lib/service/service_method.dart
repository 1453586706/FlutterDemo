import 'package:dio/dio.dart';
import 'package:fluttercc/config/service_url.dart';


Future request(url, formData) async {
  try {
    Response response;
    Dio dio = Dio();
    if (formData == null) {
      response = await dio.get(servicePath[url]);
    } else {
      response = await dio.get(servicePath[url], queryParameters: formData);
    }
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口出现异常,请检测代码和服务器情况.......');
    }
  } catch (e) {
    return print('ERROR:==========>$e');
  }
}