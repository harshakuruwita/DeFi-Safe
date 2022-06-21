import 'package:code/controllers/auth_controler.dart';
import 'package:code/models/constant/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final TextEditingController _walletController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.find<AuthControler>().genarateKey();

    return Scaffold(
      backgroundColor: theamColor,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Row(children: const [
                Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                ),
                Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                )
              ]),
            ),
          ),
          Expanded(
              flex: 8,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14)),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(32),
                          child: Text(
                            'Sign Up',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22, right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Wallet Address',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          ),
                          TextField(
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                            controller: _walletController
                              ..text =
                                  Get.find<AuthControler>().ethAdddress.value,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              suffixIcon: TextButton(
                                child: Text('Coppy'),
                                onPressed: () {
                                  Get.find<AuthControler>().setIsShowPassword();
                                },
                              ),
                              prefixIcon: Icon(Icons.currency_bitcoin_rounded),
                              hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 22, right: 16, top: 22),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          ),
                          Obx(() => TextField(
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                                // controller: _addressController,
                                obscureText: !Get.find<AuthControler>()
                                    .isShowPassword
                                    .value,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  hintText: 'xxxxxxxx',
                                  prefixIcon:
                                      const Icon(Icons.lock_person_rounded),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      Get.find<AuthControler>()
                                          .setIsShowPassword();
                                    },
                                    icon: Get.find<AuthControler>()
                                            .isShowPassword
                                            .value
                                        ? const Icon(Icons.visibility)
                                        : const Icon(Icons.visibility_off),
                                  ),
                                  hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 22, right: 16, top: 22),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Email',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          ),
                          TextField(
                            style: const TextStyle(
                                color: Colors.black, fontSize: 16),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: 'xxxxxxxx',
                              prefixIcon: const Icon(Icons.email_rounded),
                              hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Obx(() => Checkbox(
                              value: Get.find<AuthControler>()
                                  .isAcceptPrivacy
                                  .value,
                              onChanged: (value) {
                                Get.find<AuthControler>()
                                    .setAcceptPrivacy(isAccept: value!);
                              })),
                          const Text(
                            'I accept the',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed('/privacy');
                            },
                            child: const Text(
                              ' policy and privacy',
                              style: TextStyle(
                                  color: theamColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 18),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: theamColor,
                              minimumSize: const Size(
                                  0, 48) // put the width and height you want
                              ),
                          onPressed: () {},
                          child: const Text(
                            'Done',
                            style: TextStyle(fontSize: 16),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(color: Colors.black45),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.toNamed('/login');
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(color: theamColor),
                            ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
