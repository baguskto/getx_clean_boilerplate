import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../shared/loading/base.widget.dart';

import './controllers/login.controller.dart';
import 'widgets/login_button.widget.dart';
import 'widgets/login_text_field.widget.dart';
import 'widgets/password_text_field.widget.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('GETX CLEAN ARC', style: Get.textTheme.headline3),
                    const SizedBox(height: 50),
                    LoginTextFieldWidget(),
                    const SizedBox(height: 10),
                    PasswordTextFieldWidget(),
                    const SizedBox(height: 20),
                    LoginButtonWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
