import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jikan_api/app/bindings/home_binding.dart';
import 'package:jikan_api/app/routes/app_routes.dart';
import 'package:jikan_api/app/ui/home/home.dart';

class AppPages {
  static Route<dynamic>? generatePage(RouteSettings settings) {
    switch(settings.name) {
      case AppRoutes.HOME:
        return GetPageRoute(
          page: () => const Home(),
          routeName: AppRoutes.HOME,
          binding: HomeBinding(),
        );
      default:
        return null;
    }
  }
}