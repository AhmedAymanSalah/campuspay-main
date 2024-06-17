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
    Options options = Options(
      headers: {'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJ5b3VzZWZhbGlzYWJlcjAxQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiODZkMzllNGEtOWVkYS00YzBhLTgzMDMtYWYzMWMzNWY5ZmQyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6InlvdXNlZjFtb2RlcmF0b3IiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJNb2RlcmF0b3IiLCJleHAiOjE3MTk0NDU0MzMsImlzcyI6IkdyYWR1dGlvblByb2plY3QiLCJhdWQiOiJHcmFkdXRpb25Qcm9qZWN0In0.5VYuegxvkRYpI4n1djsYEUiqZjpTB4hQfTWdFvK_7hs'},
    );
    return await dio.get(
      url,
      queryParameters:query,
      data: data,
      options:options
    );
  }


  Future<void> login() async {
    try {
      final response = await ApiService.postData(
        url: 'Authentication/LogIn',
        query: {
          'Email': 'mm3276@fayoum.edu.eg',
          'Password': 'Zxcvbnm.12',
        },
      );
      print('Login successful: ${response.data}');
    } catch (e) {
      print('Error: $e');
    }
  }

  static Future<Response> postData({
    required String url,
    dynamic data,
    dynamic query,
    String? token,
  }) async {
    Options options = Options(
      headers: {'Authorization': 'Bearer $token'},
    );
    return await dio.post(
      url,
      data: data,
      queryParameters: query,
      options: options
    );
  }

  static Future<Response> putData({
    required String url,
    dynamic data,
    dynamic query,
    String? token,
  }) async {
    Options options = Options(
      headers: {'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJ5b3VzZWZhbGlzYWJlcjAxQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiODZkMzllNGEtOWVkYS00YzBhLTgzMDMtYWYzMWMzNWY5ZmQyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6InlvdXNlZjFtb2RlcmF0b3IiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJNb2RlcmF0b3IiLCJleHAiOjE3MTk0NTgwMDMsImlzcyI6IkdyYWR1dGlvblByb2plY3QiLCJhdWQiOiJHcmFkdXRpb25Qcm9qZWN0In0.nRmrpWuFXR_9hpAbEwwJ_wT8pRlg2HRZKjRHOoxqXgo'},
    );
    return await dio.put(
        url,
        data: data,
        queryParameters: query,
        options: options
    );
  }



  static Future<Response> deleteData({
    required String url,
    dynamic query,
    String? token,
  })async
  {
    Options options = Options(
      headers: {'Authorization': 'Bearer $token'},
    );
    return await dio.delete(
        url,
        queryParameters:query,
        options:options
    );
  }
}