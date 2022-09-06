// ignore_for_file: avoid_print

import 'package:cblaze/data/prefs.dart';
import 'package:cblaze/helpers/constants.dart';
import 'package:cblaze/repo/app_repo.dart';
import 'package:cblaze/router/page_router.dart';
import 'package:cblaze/service/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHelper().init();
  Get.lazyPut(() => ApiService(), fenix: true);
  Get.lazyPut(() => AppRepo(), fenix: true);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isLoggedIn = false;

  @override
  void initState() {
    checkLogin();
    super.initState();
  }

  checkLogin() {
    final token = SharedPrefHelper().get(Constants.LOGIN_KEY);
    print('isLoggedIn $token');
    if (token != null && token.isNotEmpty) {
      isLoggedIn = true;
    } else {
      isLoggedIn = false;
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CBlaze',
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          fontFamily: GoogleFonts.poppins().fontFamily),
      onGenerateRoute: PageRouter.generateRoutes,
      initialRoute: isLoggedIn ? PageRouter.HOME : PageRouter.LOGIN,
    );
  }
}
