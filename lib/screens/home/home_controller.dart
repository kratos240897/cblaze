// ignore_for_file: avoid_print
import 'package:cblaze/data/models/prefs.dart';
import 'package:cblaze/helpers/constants.dart';
import 'package:get/get.dart';
import '../../repo/app_repo.dart';

class HomeController extends GetxController {
  final _appRepo = Get.find<AppRepo>();
  final name = ''.obs;
  final dob = ''.obs;
  final phone = ''.obs;

  @override
  onInit() async {
    await getProfile();
    super.onInit();
  }

  Future<void> getProfile() async {
    final token = await SharedPrefHelper().get(Constants.LOGIN_KEY);
    if (token != null) {
      _appRepo.getProfile(token).then((value) {
        if (value.code == 200) {
          name.value = value.data.firstName;
          dob.value = value.data.dob;
          phone.value = value.data.phone;
        }
      });
    }
  }
}
