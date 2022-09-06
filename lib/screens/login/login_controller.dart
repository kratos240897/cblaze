// ignore_for_file: avoid_print
import 'package:cblaze/data/prefs.dart';
import 'package:cblaze/helpers/constants.dart';
import 'package:cblaze/router/page_router.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import '../../repo/app_repo.dart';

class LoginController extends GetxController {
  final _appRepo = Get.find<AppRepo>();

  Future<void> login({required String username, required String password}) async {
    _appRepo
        .login({'code': username, 'password': password}).then((value) async {
      if (value.code == 200) {
        final token = value.data.token;
        await SharedPrefHelper().set(Constants.LOGIN_KEY, token);
        print('tappo: $token');
        Get.offNamed(PageRouter.HOME);
      }
    });
  }
}
