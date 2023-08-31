import 'package:get/get.dart';
import 'package:kudi_mobile/presentation/dashboard/controllers/dashboard.controller.dart';

class DashboardControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}
