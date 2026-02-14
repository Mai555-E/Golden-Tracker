import 'package:dio/dio.dart';

import 'app_api.dart';

class DioHelper {
  static late Dio dio;

  static Future< void> init()async {
    dio =  Dio(
      BaseOptions(
        baseUrl: AppApi.url,
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20),
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({required String endpoint, Map<String, dynamic>? queryParameters}) async {
    final Response response = await dio.get(endpoint, queryParameters: queryParameters);
    try {
      if (response.statusCode == 200) return response;
    } catch (e) {
      return throw Exception(e);
    }

    return response;
  }
}
