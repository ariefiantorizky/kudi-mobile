import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kudi_mobile/infrastructure/components/buttons/primary_button.dart';
import 'package:kudi_mobile/infrastructure/components/forms/form_input.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:kudi_mobile/infrastructure/components/scaffold_container.dart';

import 'package:kudi_mobile/presentation/register/controller/register.controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameInputController = TextEditingController();
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
              height: 20,
            ),
            const Center(
              child: Text(
                'Register',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            FormInput(
                textInputType: TextInputType.name,
                autoFillHints: const [
                  AutofillHints.name,
                  AutofillHints.nickname,
                  AutofillHints.namePrefix,
                  AutofillHints.username,
                  AutofillHints.newUsername
                ],
                controller: nameInputController,
                hintText: "Name",
                icon: CarbonIcons.person,
                obscureText: false,
                isPassword: false),
            const SizedBox(
              height: 10,
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
              text: "Register",
              executingText: "Registering...",
              onPressed: () async {
                // Your asynchronous operation logic here
                // For example, you can use a Future.delayed to simulate an async operation.
                await Future.delayed(const Duration(seconds: 2));

                // Return a value if necessary
                return Get.back();
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: RichText(
                  text: TextSpan(children: [
                const TextSpan(
                  text: 'Already have an account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: ' Login here!',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                )
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
