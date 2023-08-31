import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  final TextInputType? textInputType;
  final Iterable<String>? autoFillHints;
  final TextEditingController controller;
  final String hintText;
  bool obscureText = false;
  final IconData? icon;
  final bool isPassword;

  FormInput(
      {super.key,
      required this.textInputType,
      required this.autoFillHints,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.icon,
      required this.isPassword});

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofillHints: widget.autoFillHints,
      keyboardType: widget.textInputType,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15.0),
        suffixIcon: widget.isPassword
            ? IconButton(
                iconSize: 20,
                onPressed: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText;
                  });
                },
                icon: widget.obscureText
                    ? const Icon(CarbonIcons.view)
                    : const Icon(CarbonIcons.view_off))
            : null,
        suffixIconColor: Colors.grey.shade500,
        prefixIcon: Icon(
          widget.icon,
          size: 20,
        ),
        prefixIconColor: Colors.black.withOpacity(0.45),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 0,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.grey.shade600),
        fillColor: Theme.of(context).colorScheme.background,
        filled: true,
      ),
    );
  }
}
