import 'package:get/get.dart';

import '../../../../presentation/register/controller/register.controller.dart';

class RegisterControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
