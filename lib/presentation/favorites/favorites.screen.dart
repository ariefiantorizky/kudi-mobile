import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kudi_mobile/infrastructure/components/forms/form_input.dart';

import 'controllers/favorites.controller.dart';

class FavoritesScreen extends GetView<FavoritesController> {
  const FavoritesScreen({Key? key}) : super(key: key);
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
