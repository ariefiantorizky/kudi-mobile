import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kudi_mobile/infrastructure/components/containers/scaffold_container.dart';

import 'controllers/recipe.controller.dart';

class RecipesScreen extends GetView<RecipesController> {
  const RecipesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ScaffoldContainer(
      children: Text('Recipes'),
    );
  }
}
