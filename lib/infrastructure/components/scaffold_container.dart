import 'package:flutter/material.dart';

class ScaffoldContainer extends StatelessWidget {
  final dynamic children;
  const ScaffoldContainer({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: children,
        ),
      ),
    );
  }
}
