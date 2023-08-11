
import 'package:flutter/material.dart';
import 'package:nike_app/core/utils/app_assets.dart';
import 'package:nike_app/core/utils/app_styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.kNikeLogo, height: 54),
        const Text(
          'NIKE',
          style: AppStyles.textStyle65,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
