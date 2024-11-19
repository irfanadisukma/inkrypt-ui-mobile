import 'package:flutter/material.dart';
import 'package:inkrypt_tech_test/app/components/secondary_button.dart';
import 'package:inkrypt_tech_test/app/core/app_colors.dart';
import 'package:inkrypt_tech_test/app/core/assets_path.dart';
import 'package:inkrypt_tech_test/features/informations/presentation/information_page.dart';

import 'widgets/welcome_text_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            gradientBg,
            height: mq.height,
            width: mq.width,
            fit: BoxFit.fitHeight,
          ),
          Center(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const WelcomeTextWidget(),

                    Image.asset(logo),

                    SecondaryButton(
                      text: 'Get More Information', 
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const InformationPage())
                        );
                      },
                      textColor: AppColors.whiteColor,
                      borderColor: AppColors.borderColor,
                      height: 50,
                      suffixIcon: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: const EdgeInsets.all(2),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.blueColor
                          ),
                          child: Image.asset(
                            'assets/images/ic-arrow.png',
                            width: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}