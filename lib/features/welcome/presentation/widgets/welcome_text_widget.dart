import 'package:flutter/material.dart';
import 'package:inkrypt_tech_test/app/components/text_style.dart';
import 'package:inkrypt_tech_test/app/core/app_colors.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),

        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: spaceGroteskBold.copyWith(
              shadows: [
                Shadow(
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 10.0,
                  color: Colors.black.withOpacity(0.4)
                ),
              ],
            ),
            
            children: [
              TextSpan(
                text: 'welcome to\n',
                style: spaceGroteskBold.copyWith(
                  color: AppColors.whiteColor,
                  fontSize: 32
                )
              ),
              TextSpan(
                text: 'my ',
                style: spaceGroteskBold.copyWith(
                  color: AppColors.whiteColor,
                  fontSize: 32
                )
              ),
              TextSpan(
                text: 'video player',
                style: spaceGroteskBold.copyWith(
                  color: AppColors.blueColor,
                  fontSize: 32
                )
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        Text(
          "Ensure your privacy and keep\nyour content safe and secure.",
          textAlign: TextAlign.center,
          style: spaceGroteskRegular.copyWith(
            color: AppColors.whiteColor,
            fontSize: 16
          ),
        ),
      ],
    );
  }
}