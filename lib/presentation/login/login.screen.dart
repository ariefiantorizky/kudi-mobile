import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kudi_mobile/infrastructure/components/buttons/primary_button.dart';
import 'package:kudi_mobile/infrastructure/components/forms/form_input.dart';
import 'package:kudi_mobile/infrastructure/components/scaffold_container.dart';
import 'package:kudi_mobile/infrastructure/navigation/routes.dart';
import 'package:kudi_mobile/presentation/home/home.screen.dart';

import 'controller/login.controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailInputController = TextEditingController();
    final passwordInputController = TextEditingController();
    return ScaffoldContainer(
      children: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                'lib/infrastructure/assets/app/icon_app.png',
                fit: BoxFit.cover,
                // width: 135,
                height: 96,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            FormInput(
                textInputType: TextInputType.emailAddress,
                autoFillHints: const [AutofillHints.email],
                controller: emailInputController,
                hintText: "example@email.com",
                icon: CarbonIcons.email,
                obscureText: false,
                isPassword: false),
            const SizedBox(
              height: 10,
            ),
            FormInput(
                textInputType: TextInputType.visiblePassword,
                autoFillHints: const [
                  AutofillHints.password,
                  AutofillHints.newPassword
                ],
                controller: passwordInputController,
                hintText: "8 characters minimum (password)",
                icon: CarbonIcons.password,
                obscureText: true,
                isPassword: true),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(
              text: "Login",
              executingText: "Logging in...",
              onPressed: () async {
                // Your asynchronous operation logic here
                // For example, you can use a Future.delayed to simulate an async operation.
                await Future.delayed(const Duration(seconds: 2));

                // Return a value if necessary
                return Get.offAll(HomeScreen());
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: RichText(
                  text: TextSpan(children: [
                const TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: ' Register here!',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.toNamed(Routes.REGISTER),
                )
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
