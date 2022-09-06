// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/home/home.dart';
import '../screens/home/home_binding.dart';
import '../screens/login/login.dart';
import '../screens/login/login_binding.dart';

class PageRouter {
  
  static const LOGIN = '/login';
  static const HOME = '/home';

  static Route? generateRoutes(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case LOGIN:
        return GetPageRoute(
            routeName: LOGIN,
            page: () => const Login(),
            binding: LoginBinding());
      case HOME:
        return GetPageRoute(
            routeName: HOME, page: () => const Home(), binding: HomeBinding());
    }
    return null;
  }
}
