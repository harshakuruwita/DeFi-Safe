import 'package:code/models/constant/app_constant.dart';
import 'package:code/routes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      Get.offNamed(kLogin);
    });

    return Scaffold(
      backgroundColor: theamColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              'assets/images/logo_white.png',
              scale: 5,
            ))
          ],
        ),
      ),
    );
  }
}
