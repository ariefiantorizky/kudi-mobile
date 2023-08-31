import 'package:kudi_mobile/infrastructure/components/containers/scaffold_container.dart';

import 'controllers/fridge.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FridgeScreen extends GetView<FridgeController> {
  const FridgeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ScaffoldContainer(
      children: Text('Fridge'),
    );
  }
}
