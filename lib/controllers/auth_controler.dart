import 'dart:math';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:web3dart/web3dart.dart';

class AuthControler extends GetxController {
  var isAcceptPrivacy = false.obs;
  var isShowPassword = false.obs;
  var isShowConfirmPassword = false.obs;
  var ethAdddress = ''.obs;
  late Web3Client ethClient;

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

  Future<DeployedContract> loadContract() async {
    String abi = await rootBundle.loadString('assets/abi/abi.json');
    String contractAddress = ethAdddress.value;
    final contract = DeployedContract(ContractAbi.fromJson(abi, 'Auth'),
        EthereumAddress.fromHex(contractAddress));
    return contract;
  }

  Future<List<dynamic>> query(String fuctionName, List<dynamic> arg) async {
    final contract = await loadContract();
    final ethFunction = contract.function(fuctionName);
    final result = await ethClient.call(
        contract: contract, function: ethFunction, params: arg);

    return result;
  }

  Future<void> userRegister(
      {required String walletAddress,
      required String password,
      required String email}) async {
    List<dynamic> result =
        await query('signup', [walletAddress, password, email]);
  }
}
