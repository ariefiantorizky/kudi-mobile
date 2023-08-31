import 'package:awaitable_button/awaitable_button.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Future<dynamic> Function()? onPressed;
  final void Function(dynamic)? whenComplete;
  final void Function(Exception, StackTrace)? onError;
  final String text;
  final String executingText;

  const PrimaryButton(
      {super.key,
      required this.text,
      required this.executingText,
      required this.onPressed,
      this.whenComplete,
      this.onError});

  @override
  Widget build(BuildContext context) {
    return AwaitableElevatedButton<dynamic>(
      // Required
      onPressed: onPressed,
      whenComplete: whenComplete,
      onError: onError,
      buttonStyle: ButtonStyle(
        padding: const MaterialStatePropertyAll<EdgeInsetsGeometry?>(
          EdgeInsets.symmetric(vertical: 13, horizontal: 30),
        ),
        textStyle: const MaterialStatePropertyAll<TextStyle>(
          TextStyle(color: Colors.white, fontSize: 14),
        ),
        backgroundColor: MaterialStatePropertyAll<Color>(
          Theme.of(context).colorScheme.primary,
        ),
      ),

      indicatorColor: Theme.of(context).colorScheme.secondary,
      indicatorSize: const Size.square(16),
      indicatorStrokeWidth: 2,
      executingChild: Text(
        executingText,
      ),
      child: Text(
        text,
      ),
    );
  }
}
