// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';
import '../helpers/constants.dart';

class ApiService {
  var dio = Dio(BaseOptions(
    baseUrl: Constants.BASE_URL,
    contentType: 'application/json',
  ));

  ApiService() {
    addInterceptor();
  }

  void addInterceptor() {
    dio.interceptors.add(LoggyDioInterceptor());
  }

  Future<Response> postRequest(
      String endpoint, Map<String, dynamic> query) async {
    try {
      Response response;
      response = await dio.post(
        endpoint,
        queryParameters: query,
      );
      return response;
    } catch (e) {
      print(e);
      return Future.error(e);
    }
  }

  Future<Response> getRequest(String endpoint, Map<String, dynamic> query,
      {Map<String, dynamic>? headers}) async {
    try {
      Response response;
      if (headers != null) {
        dio.options.headers = headers;
        dio.options.contentType = 'form-data';
      }
      response = await dio.get(
        endpoint,
        queryParameters: query,
      );
      return response;
    } catch (e) {
      print(e);
      return Future.error(e);
    }
  }
}
