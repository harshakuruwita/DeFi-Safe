import 'dart:math';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

class AuthControler extends GetxController {
  var isAcceptPrivacy = false.obs;
  var isShowPassword = false.obs;
  var isShowConfirmPassword = false.obs;
  var ethAdddress = ''.obs;
  late Web3Client ethClient;
  late Client httpClient;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initEthConnection();
  }

  void setAcceptPrivacy({required bool isAccept}) {
    isAcceptPrivacy.value = isAccept;
  }

  void setIsShowPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  void setIsShowConfirmPassword() {
    isShowConfirmPassword.value = !isShowConfirmPassword.value;
  }

  void initEthConnection() {
    httpClient = Client();
    ethClient = Web3Client(
        'https://ropsten.infura.io/v3/3ea7e633be4e4e4abd28bbdf81dcda91',
        httpClient);
  }

  Future<DeployedContract> loadContract() async {
    String abi = await rootBundle.loadString('assets/abi/abi.json');
    String contractAddress = '0x57BaC116Eb7c27C76b67E7Af10D7277DEa2998B5';
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

  void genarateKey() async {
    var rnd = Random.secure();
    Credentials random = EthPrivateKey.createRandom(rnd);
    var address = await random.extractAddress();
    ethAdddress.value = address.toString();
  }

  Future<void> userRegister(
      {required String walletAddress,
      required String password,
      required String email}) async {
    EthereumAddress address = EthereumAddress.fromHex(walletAddress);
    print(address);
    List<dynamic> result =
        await query('signup', [address, 'harsha', password, 'AS333']);

    //  print(result);
  }
}
