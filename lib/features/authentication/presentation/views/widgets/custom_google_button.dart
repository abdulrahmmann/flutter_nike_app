
import 'package:flutter/material.dart';
import 'package:nike_app/core/utils/app_assets.dart';
import 'package:nike_app/core/utils/app_colors.dart';

class CustomGoogleButton extends StatelessWidget {
  const CustomGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.kGreyColor2,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.kGoogleIcon),
          const SizedBox(width: 14),
          const Text(
            'Sign In with Google ',
            style: TextStyle(
                fontSize: 14,
                color: AppColors.kGBlackColor1,
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway'
            ),
          )
        ],
      ),
    );
  }
}