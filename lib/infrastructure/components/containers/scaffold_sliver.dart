import 'package:flutter/material.dart';

class ScaffoldSliver extends StatelessWidget {
  final dynamic children;
  const ScaffoldSliver({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: children);
  }
}
