import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedNavIndex = 0.obs;

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
