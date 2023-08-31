import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kudi_mobile/infrastructure/navigation/bindings/controllers/favorites.controller.binding.dart';
import 'package:kudi_mobile/infrastructure/navigation/bindings/controllers/fridge.controller.binding.dart';
import 'package:kudi_mobile/infrastructure/navigation/bindings/controllers/recipes.controller.binding.dart';
import 'package:kudi_mobile/presentation/favorites/controllers/favorites.controller.dart';
import 'package:kudi_mobile/presentation/register/register.screen.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  const EnvironmentsBadge({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
        name: Routes.LOGIN,
        page: () => const LoginPage(),
        binding: LoginControllerBinding()),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterPage(),
      binding: RegisterControllerBinding(),
    ),
    GetPage(
      name: Routes.FRIDGE,
      page: () => const FridgeScreen(),
      binding: FridgeControllerBinding(),
    ),
    GetPage(
      name: Routes.RECIPES,
      page: () => const RecipeScreen(),
      binding: RecipesControllerBinding(),
    ),
    GetPage(
      name: Routes.FAVORITES,
      page: () => const FavoritesScreen(),
      binding: FavoritesControllerBinding(),
    )
  ];
}
