
import 'package:flutter/material.dart';
import 'package:nike_app/core/utils/app_colors.dart';

class BackStackArrow extends StatelessWidget {
  const BackStackArrow({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.kGreyColor2,
        ),
        child: Image.asset('assets/images/arrow_back.png'),
      ),
    );
  }
}