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
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(vertical: 13, horizontal: 30)),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors
                  .grey.shade600; // Customize the disabled text color here
            }
            return Colors.black; // Default text color for other states
          },
        ),
        side: MaterialStateProperty.resolveWith<BorderSide>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return BorderSide(
                  width: 3,
                  color: Colors
                      .grey.shade300); // Customize the disabled text color here
            }
            return BorderSide(
                width: 3,
                color: Theme.of(context)
                    .colorScheme
                    .primary); // Default text color for other states
          },
        ),
      ),
      child: const Text(
        'Logout',
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
