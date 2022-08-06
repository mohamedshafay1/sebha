import 'package:dio/dio.dart';
import 'package:sebha/ViewModel/database/network/end_point.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

//GET_DATA
  static Future<Response<dynamic>> getData(
      {required String url,
      Map<String, dynamic>? query,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await dio.get(url,
          queryParameters: query, onReceiveProgress: onReceiveProgress);
      return response;
    } catch (error) {
      rethrow;
    }
  }

//POST_DATA
  static Future<Response<dynamic>> postData({
    required String url,
    Map<String, dynamic>? query,
    dynamic data,
  }) async {
    return await dio.post(url, queryParameters: query, data: data);
  }

  //PUT_DATA
  static Future<Response<dynamic>> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    return await dio.put(url, queryParameters: query, data: data);
  }
}
