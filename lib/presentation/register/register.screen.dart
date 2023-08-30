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
            Center(
              child: Image.asset(
                'lib/infrastructure/assets/app/icon_app.png',
                fit: BoxFit.cover,
                // width: 135,
                height: 135,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Register',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 50,
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
              height: 20,
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
              height: 20,
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
              height: 30,
            ),
            PrimaryButton(
              text: "Register",
              executingText: "Registering...",
              onPressed: () async {
                // Your asynchronous operation logic here
                // For example, you can use a Future.delayed to simulate an async operation.
                await Future.delayed(const Duration(seconds: 2));

                // Return a value if necessary
                return 'Operation completed';
              },
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {},
              child: const Center(
                child: Text(
                  'Already have an account? Login here!',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
