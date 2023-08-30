import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ScaffoldContainer extends StatelessWidget {
  final dynamic children;
  const ScaffoldContainer({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f1faee"),
      body: Padding(padding: const EdgeInsets.all(13), child: children),
    );
  }
}
