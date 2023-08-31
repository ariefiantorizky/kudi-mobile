import 'package:get/get.dart';
import 'package:kudi_mobile/presentation/recipe/controllers/recipe.controller.dart';

class RecipesControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecipesController>(
      () => RecipesController(),
    );
  }
}