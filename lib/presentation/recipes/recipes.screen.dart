import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/recipe.controller.dart';

class RecipeScreen extends GetView<RecipesController> {
  const RecipeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
          centerTitle: true,
        ),
        body: const Row(
          children: [],
        ));
  }
}
