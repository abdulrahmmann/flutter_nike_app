
import 'package:flutter/material.dart';
import 'package:nike_app/core/utils/app_colors.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child:Scaffold(
          backgroundColor: AppColors.kBlueColor,
          body: SplashViewBody(),
        )
    );
  }
}
