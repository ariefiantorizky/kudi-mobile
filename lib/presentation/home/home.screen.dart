import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kudi_mobile/infrastructure/components/popup/rating.dart';
import 'package:kudi_mobile/infrastructure/components/scaffold_container.dart';

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
      body: ScaffoldContainer(
        children: ListView(
          children: const [
            RatingPopup(),
          ],
        ),
      ),
    );
  }
}
