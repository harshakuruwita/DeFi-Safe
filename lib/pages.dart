import 'package:code/app_binding.dart';
import 'package:code/routes.dart';
import 'package:code/view/auth/splash.dart';
import 'package:get/route_manager.dart';

class Pages {
  static List<GetPage> getPages() {
    return [
      GetPage(name: kSplash, page: () => const Splash(), binding: AppBinging())
    ];
  }
}
