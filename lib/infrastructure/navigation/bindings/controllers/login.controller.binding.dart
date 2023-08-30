import 'package:get/get.dart';

import '../../../../presentation/login/controller/login.controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
