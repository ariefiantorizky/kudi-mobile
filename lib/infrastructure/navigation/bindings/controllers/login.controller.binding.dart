import 'package:get/get.dart';

import '../../../../presentation/login/controller/login.controller.dart';

class LoginControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
