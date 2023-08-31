import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kudi_mobile/infrastructure/components/buttons/primary_button.dart';
import 'package:kudi_mobile/infrastructure/components/buttons/secondary_button.dart';
import 'package:kudi_mobile/infrastructure/components/scaffold_container.dart';
import 'package:kudi_mobile/presentation/login/login.screen.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  // @override
  // final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey.shade700,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CarbonIcons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CarbonIcons.corn),
                label: 'Ingredients',
              ),
              BottomNavigationBarItem(
                icon: Icon(CarbonIcons.noodle_bowl),
                label: 'Recipes',
              ),
              BottomNavigationBarItem(
                icon: Icon(CarbonIcons.favorite),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(CarbonIcons.user_profile),
                label: 'Profile',
              )
            ],
            currentIndex: controller.selectedNavIndex.value,
            onTap: controller.onNavItemTapped,
          )),
      body: ScaffoldContainer(
        children: ListView(
          children: [
            SecondaryButton(
              text: 'Login',
              onPressed: () => {},
            ),
            PrimaryButton(
              text: "Logout",
              executingText: "Logging out...",
              onPressed: () async {
                // Your asynchronous operation logic here
                // For example, you can use a Future.delayed to simulate an async operation.
                await Future.delayed(const Duration(seconds: 1));

                // Return a value if necessary
                return Get.offAll(const LoginPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
