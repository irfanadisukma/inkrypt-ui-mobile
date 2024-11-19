import 'package:flutter/material.dart';
import 'package:inkrypt_tech_test/app/components/text_style.dart';
import 'package:inkrypt_tech_test/app/core/app_colors.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final double radius;
  final double? width;
  final double? height;
  final Color? buttonColor;
  final EdgeInsets? margin;
  final bool enable;
  final bool isLoading;
  final double fontSize;
  final Color? borderColor;
  final Color? textColor;
  final Widget? suffixIcon;
  const SecondaryButton({super.key, this.suffixIcon, this.textColor, this.borderColor, this.fontSize = 16, required this.text, required this.onTap, this.radius = 24, this.width, this.height, this.buttonColor, this.margin, this.enable = true, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height ?? 45,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: enable ? buttonColor ?? Colors.transparent : Colors.transparent,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(width: 1.5, color: enable ? borderColor ?? AppColors.primaryColor : AppColors.greyColor)
      ),
      child: Material(
        borderRadius: BorderRadius.circular(radius),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          splashColor: Theme.of(context).primaryColorLight,
          onTap: isLoading ? null : enable ? onTap : null,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
            ),
            alignment: Alignment.center,
            child: isLoading ? const SizedBox(
              height: 40,
              width: 40,
              child: Center(child: CircularProgressIndicator.adaptive())) :
            Stack(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Text(
                    text,
                    style: spaceGroteskBold.copyWith(
                      color: enable ? textColor ?? AppColors.primaryColor : AppColors.greyColor,
                      fontSize: fontSize,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
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