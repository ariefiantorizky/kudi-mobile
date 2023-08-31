import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kudi_mobile/infrastructure/components/buttons/primary_button.dart';

class RatingPopup extends StatelessWidget {
  const RatingPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => popUpContainer(context),
      icon: const Icon(
        CarbonIcons.star_filled,
        color: Colors.orange,
      ),
    );
  }
}

dynamic popUpContainer = (context) => {
      Get.dialog(
        AlertDialog(
          contentPadding: EdgeInsets.zero,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Theme.of(context).colorScheme.background,
          content: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
          ),
          actions: [
            PrimaryButton(
              text: 'Submit',
              executingText: 'Please wait...',
              onPressed: () async => Get.back(),
            )
          ],
        ),
        barrierDismissible: false,
        transitionCurve: Curves.easeInOut,
      )
    };
