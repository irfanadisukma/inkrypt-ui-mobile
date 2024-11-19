import 'package:flutter/material.dart';
import 'package:inkrypt_tech_test/app/components/text_style.dart';
import 'package:inkrypt_tech_test/app/core/app_colors.dart';
import 'package:inkrypt_tech_test/app/core/assets_path.dart';
import 'package:inkrypt_tech_test/features/informations/presentation/constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
        title: Text(
          "About the app",
          style: spaceGroteskBold.copyWith(
            fontSize: 22,
            color: AppColors.whiteColor
          ) ,
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            gradientBg,
            height: mq.height,
            width: mq.width,
            fit: BoxFit.fitHeight,
          ),

          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 24),
                  Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          bgIconInformation,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          icAboutApp,
                          width: 100,
                        ),
                      )
                    ],
                  ),
              
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        Text(
                          "App Build Version : 1.1.1",
                          style: spaceGroteskBold.copyWith(
                            color: AppColors.whiteColor,
                            fontSize: 16
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          aboutTextParagraph1,
                          style: spaceGroteskRegular.copyWith(
                            color: AppColors.whiteColor,
                            fontSize: 16
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          aboutTextParagraph2,
                          style: spaceGroteskRegular.copyWith(
                            color: AppColors.whiteColor,
                            fontSize: 16
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          aboutTextParagraph3,
                          style: spaceGroteskRegular.copyWith(
                            color: AppColors.whiteColor,
                            fontSize: 16
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          aboutTextParagraph4,
                          style: spaceGroteskRegular.copyWith(
                            color: AppColors.whiteColor,
                            fontSize: 16
                          ),
                        ),
                      ],
                    ),
                  )
              
                  
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}