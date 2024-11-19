import 'package:flutter/material.dart';
import 'package:inkrypt_tech_test/app/components/text_style.dart';
import 'package:inkrypt_tech_test/app/core/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final double radius;
  final double? width;
  final double? height;
  final Color? buttonColor;
  final Color? textColor;
  final EdgeInsets? margin;
  final bool enable;
  final bool isLoading;
  final double? textSize;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  const PrimaryButton({super.key, 
    required this.text, 
    required this.onTap, 
    this.radius = 8, 
    this.width, 
    this.height, 
    this.buttonColor, 
    this.margin, 
    this.enable = true, 
    this.isLoading = false, 
    this.textColor, 
    this.textSize,
    this.suffixIcon,
    this.prefixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height ?? 45,
      decoration: BoxDecoration(
        color: enable ? buttonColor ?? AppColors.primaryColor : AppColors.greyColor,
        borderRadius: BorderRadius.circular(radius)
      ),
      child: Material(
        borderRadius: BorderRadius.circular(radius),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          splashColor: Theme.of(context).primaryColorLight,
          onTap: isLoading ? null : enable ? onTap : null,
          child: Container(
            height: height ?? 45,
            width: width ?? MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius)
            ),
            alignment: Alignment.center,
            child: isLoading ? const SizedBox(
              height: 40,
              width: 40,
              child: Center(child: CircularProgressIndicator.adaptive())) :
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                prefixIcon ?? const SizedBox(),
                Text(
                  text,
                  style: spaceGroteskRegular.copyWith(
                      color: textColor ?? AppColors.whiteColor,
                      fontSize: textSize ?? 16,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
                ),
                suffixIcon ?? const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}