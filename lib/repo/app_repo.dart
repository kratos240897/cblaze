// ignore_for_file: avoid_print

import 'package:cblaze/data/models/login_response.dart';
import 'package:cblaze/data/models/profile_response.dart';
import 'package:cblaze/helpers/endpoints.dart';
import 'package:get/instance_manager.dart';

import '../service/api_service.dart';

class AppRepo {
  final ApiService _apiService = Get.find<ApiService>();

  Future<ProfileResponse> getProfile(String token) async {
    try {
      final res = await _apiService.getRequest(EndPoints.PROFILE, {}, headers: {
        'Authorization': 'Bearer $token'
      });
      final profile = ProfileResponse.fromJson(res.data);
      return profile;
    } catch (e) {
      print(e);
      return Future.error(e);
    }
  }

  Future<LoginResponse> login(Map<String, dynamic> query) async {
    try {
      final res = await _apiService.postRequest(EndPoints.LOGIN, query);
      final login = LoginResponse.fromJson(res.data);
      return login;
    } catch (e) {
      print(e);
      return Future.error(e);
    }
  }
}
