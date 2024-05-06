import 'package:dio/dio.dart';

class ApiService
{
  static late Dio dio;

  static init()
  {
    dio=Dio(
      BaseOptions(
          baseUrl: 'https://campuspay.runasp.net/api/',
          receiveDataWhenStatusError: true
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    dynamic query,
    dynamic data,
    String? token,
  })async
  {
    dio.options.headers={
      'Content-Type':'application/json',
      'Authorization':token ??'',
    };
    return await dio.get(
      url,
      queryParameters:query,
      data: data,
    );
  }

  static Future<Response> postData({
    required String url,
    dynamic data,
    dynamic query,
    String? token,
  })async
  {
    dio.options.headers={
      'Content-Type':'application/json',
      'Authorization':token ??'',
    };
    return await dio.post(
      url,
      data:data,
      queryParameters: query
    );
  }

  static Future<Response> putData({
    required String url,
    dynamic data,
    String? token,
  })async
  {
    dio.options.headers={
      'Content-Type':'application/json',
      'Authorization':token ??'',
    };
    return await dio.put(
      url,
      data:data,
    );
  }
}