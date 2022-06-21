import 'package:code/models/constant/app_constant.dart';
import 'package:code/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            'Sign In',
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
                              'Mobile',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            // controller: _addressController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: '07XXXXXXXX',
                              prefixIcon: Icon(Icons.contact_phone),
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
                          TextField(
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                            // controller: _addressController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: 'xxxxxxxx',
                              prefixIcon: const Icon(Icons.lock_person_rounded),
                              suffixIcon: const Icon(Icons.visibility),
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
                          const EdgeInsets.only(left: 16, right: 16, top: 210),
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
                          'If you have no an account?',
                          style: TextStyle(color: Colors.black45),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.offNamed(kRegister);
                            },
                            child: const Text(
                              ' Sign Up',
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
