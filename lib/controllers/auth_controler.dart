import 'dart:math';

import 'package:get/get.dart';
import 'package:web3dart/web3dart.dart';

class AuthControler extends GetxController {
  var isAcceptPrivacy = false.obs;
  var isShowPassword = false.obs;
  var isShowConfirmPassword = false.obs;
  var ethAdddress = ''.obs;

  void setAcceptPrivacy({required bool isAccept}) {
    isAcceptPrivacy.value = isAccept;
  }

  void setIsShowPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  void setIsShowConfirmPassword() {
    isShowConfirmPassword.value = !isShowConfirmPassword.value;
  }

  void genarateKey() async {
    var rnd = Random.secure();
    Credentials random = EthPrivateKey.createRandom(rnd);
    var address = await random.extractAddress();
    ethAdddress.value = address.toString();
  }
}
