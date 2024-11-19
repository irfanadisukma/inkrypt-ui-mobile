import 'package:flutter/material.dart';
import 'package:inkrypt_tech_test/app/components/text_style.dart';
import 'package:inkrypt_tech_test/app/core/app_colors.dart';
import 'package:inkrypt_tech_test/app/core/assets_path.dart';

class InformationCardWidget extends StatelessWidget {
  final String title;
  final String icon;
  final Function() onTap;
  const InformationCardWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, AppColors.secondaryColor, AppColors.primaryColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: const EdgeInsets.all(1.0),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.lightGrayColor,
                borderRadius: BorderRadius.circular(16.0),
              ),
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: spaceGroteskBold.copyWith(
                      color: AppColors.whiteColor,
                      fontSize: 22
                    ),
                  ),
                  const SizedBox(height: 12),
                  Stack(
                    children: [
                      Center(child: Image.asset(bgIconInformation)),
                      if (icon.isNotEmpty)
                        Center(
                          child: Image.asset(
                            icon,
                            width: 100,
                          ),
                        )
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}