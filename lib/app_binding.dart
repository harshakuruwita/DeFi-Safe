import 'package:code/controllers/auth_controler.dart';
import 'package:get/instance_manager.dart';

class AppBinging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthControler>(() => AuthControler(), fenix: true);
  }
}
