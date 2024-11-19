import 'package:flutter/material.dart';
import 'package:inkrypt_tech_test/app/components/text_style.dart';
import 'package:inkrypt_tech_test/app/core/app_colors.dart';
import 'package:inkrypt_tech_test/app/core/assets_path.dart';

import 'about_page.dart';
import 'widgets/information_card_widget.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                
                    Text(
                      "Unlock Secure Streaming.",
                      textAlign: TextAlign.center,
                      style: spaceGroteskBold.copyWith(
                        color: AppColors.whiteColor,
                        fontSize: 32,
                        shadows: [
                          Shadow(
                            offset: const Offset(2.0, 2.0),
                            blurRadius: 10.0, 
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ],
                      ),
                    ),
                
                    const SizedBox(height: 16),
                
                    InformationCardWidget(
                      title: 'About App',
                      icon: icAboutApp,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const AboutPage())
                        );
                      },
                    ),
                
                    const SizedBox(
                      height: 16,
                    ),
                
                    InformationCardWidget(
                      title: 'Privacy Policy',
                      icon: icPrivacyPolicy,
                      onTap: () {},
                    ),
                
                    const SizedBox(
                      height: 16,
                    ),
                
                
                    InformationCardWidget(
                      title: 'Terms & Condition',
                      icon: '',
                      onTap: () {},
                    ),
                
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.blackColor.withOpacity(.2)
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

