
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/core/utils/app_assets.dart';
import 'package:nike_app/core/utils/app_router.dart';
import 'package:nike_app/core/utils/app_styles.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToOnboardingView();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.kNikeLogo),
        const Text(
          'NIKE',
          style: AppStyles.textStyle65,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
  void navigateToOnboardingView() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        GoRouter.of(context).push(AppRouter.kOnboardingView);
      },
    );
  }
}
