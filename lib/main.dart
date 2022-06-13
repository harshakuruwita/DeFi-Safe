import 'package:code/app_binding.dart';
import 'package:code/pages.dart';
import 'package:code/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: kSplash,
      initialBinding: AppBinging(),
      getPages: Pages.getPages(),
    );
  }
}
