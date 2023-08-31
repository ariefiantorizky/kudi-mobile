import 'package:get/get.dart';
import 'package:kudi_mobile/presentation/fridge/controllers/fridge.controller.dart';

class FridgeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FridgeController>(
      () => FridgeController(),
    );
  }
}
