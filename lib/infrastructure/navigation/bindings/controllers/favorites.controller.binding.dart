import 'package:get/get.dart';
import 'package:kudi_mobile/presentation/favorites/controllers/favorites.controller.dart';

class FavoritesControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoritesController>(
      () => FavoritesController(),
    );
  }
}
