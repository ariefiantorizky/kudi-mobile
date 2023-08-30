import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kudi_mobile/infrastructure/components/buttons/primary_button.dart';
import 'package:kudi_mobile/infrastructure/components/buttons/secondary_button.dart';
import 'package:kudi_mobile/infrastructure/components/scaffold_container.dart';
import 'package:kudi_mobile/presentation/login/login.screen.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  final HomeController controller = Get.put(HomeController());

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
      // bottomNavigationBar: Container(
      //   color: Theme.of(context).colorScheme.primary,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      //     child: GNav(
      //         rippleColor:
      //             Colors.grey.shade800, // tab button ripple color when pressed
      //         hoverColor: Theme.of(context)
      //             .colorScheme
      //             .tertiary, // tab button hover color
      //         haptic: true, // haptic feedback
      //         tabBorderRadius: 15,
      //         tabActiveBorder: Border.all(
      //             color: Colors.grey.shade600, width: 1), // tab button border
      //         tabBorder: Border.all(
      //             color: Colors.grey.shade700, width: 1), // tab button border
      //         curve: Curves.easeInOut, // tab animation curves
      //         duration:
      //             const Duration(milliseconds: 350), // tab animation duration
      //         gap: 8, // the tab button gap between icon and text
      //         color: Colors.grey.shade700, // unselected icon color
      //         activeColor: Theme.of(context)
      //             .colorScheme
      //             .secondary, // selected icon and text color
      //         iconSize: 24, // tab button icon size
      //         tabBackgroundColor: Theme.of(context)
      //             .colorScheme
      //             .secondary
      //             .withOpacity(0.25), // selected tab background color
      //         padding: const EdgeInsets.symmetric(
      //             horizontal: 10, vertical: 5), // navigation bar padding
      //         tabs: const [
      //           GButton(
      //             icon: CarbonIcons.home,
      //             text: 'Home',
      //           ),
      //           GButton(
      //             icon: CarbonIcons.corn,
      //             text: 'Ingredients',
      //           ),
      //           GButton(
      //             icon: CarbonIcons.noodle_bowl,
      //             text: 'Recipes',
      //           ),
      //           GButton(
      //             icon: CarbonIcons.favorite,
      //             text: 'Favorites',
      //           ),
      //           GButton(
      //             icon: CarbonIcons.user,
      //             text: 'Profile',
      //           )
      //         ]),
      //   ),
      // ),
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
