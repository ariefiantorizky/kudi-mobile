import 'package:get/get.dart';

import '../../../../presentation/register/controller/register.controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
