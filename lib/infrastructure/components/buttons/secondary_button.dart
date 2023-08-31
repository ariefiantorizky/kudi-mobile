import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
        side: BorderSide(
          width: 2,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }
}
