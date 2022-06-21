import 'package:code/app_binding.dart';
import 'package:code/routes.dart';
import 'package:code/view/auth/login.dart';
import 'package:code/view/auth/register.dart';
import 'package:code/view/auth/splash.dart';
import 'package:get/route_manager.dart';

class Pages {
  static List<GetPage> getPages() {
    return [
      GetPage(name: kSplash, page: () => const Splash(), binding: AppBinging()),
      GetPage(
          name: kLogin, page: () => const UserLogin(), binding: AppBinging()),
      GetPage(name: kRegister, page: () => SignUp(), binding: AppBinging())
    ];
  }
}
