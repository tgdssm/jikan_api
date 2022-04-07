import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jikan_api/app/routes/app_routes.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => AppPages.generatePage(settings),
      initialRoute: AppRoutes.HOME,
    );
  }
}
