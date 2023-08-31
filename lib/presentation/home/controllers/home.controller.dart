import 'package:kudi_mobile/presentation/dashboard/dashboard.screen.dart';
import 'package:kudi_mobile/presentation/screens.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedNavIndex = 0.obs;

  List<Widget?> navItems = [
    const DashboardScreen(),
    const FridgeScreen(),
    const RecipesScreen(),
    const FavoritesScreen(),
    null
  ].obs;

  void onNavItemTapped(int index) {
    // Update the selected index using the value assigned to selectedIndex
    selectedNavIndex.value = index;
  }

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
