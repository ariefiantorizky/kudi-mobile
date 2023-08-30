import 'package:awaitable_button/awaitable_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrimaryButton extends StatelessWidget {
  final Future<dynamic> Function()? onPressed;
  final String text;
  final String executingText;

  const PrimaryButton(
      {super.key,
      required this.text,
      required this.executingText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AwaitableElevatedButton<dynamic>(
      // Required
      onPressed: onPressed,
      // Optional
      whenComplete: (value) {
        // do something
      },
      // Optional
      onError: (exception, stackTrace) {
        // do something
      },
      // Optional
      buttonStyle: ButtonStyle(
        padding: const MaterialStatePropertyAll<EdgeInsetsGeometry?>(
            EdgeInsets.all(23)),
        textStyle: const MaterialStatePropertyAll<TextStyle>(
            TextStyle(color: Colors.white, fontSize: 18)),
        backgroundColor: MaterialStatePropertyAll<Color>(
            Theme.of(context).colorScheme.primary),
      ),
      // Optional
      indicatorColor: Theme.of(context).colorScheme.secondary,
      // Optional
      indicatorSize: const Size.square(20),
      indicatorStrokeWidth: 2,
      // Optional
      executingChild: Text(
        executingText,
      ),
      // Required
      child: Text(
        text,
      ),
    );
  }
}
