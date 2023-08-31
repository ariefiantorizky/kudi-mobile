import 'package:kudi_mobile/infrastructure/components/containers/scaffold_container.dart';

import 'controllers/favorites.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesScreen extends GetView<FavoritesController> {
  const FavoritesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ScaffoldContainer(
      children: Text('Favorities'),
    );
  }
}
