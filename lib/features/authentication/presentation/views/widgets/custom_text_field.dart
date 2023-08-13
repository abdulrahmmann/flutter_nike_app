
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nike_app/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.isPassword = false});

  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(1)
      ],
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.kGreyColor2,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide:
              const BorderSide(color: AppColors.kGreyColor2, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide:
              const BorderSide(color: AppColors.kGreyColor2, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide:
              const BorderSide(color: AppColors.kGreyColor2, width: 1)),
          suffixIcon: isPassword
              ? const Icon(
            FontAwesomeIcons.eyeSlash,
            color: AppColors.kTextColorGrey,
            size: 20,
          )
              : null),
      style: const TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          color: AppColors.kTextColorGrey),
      cursorColor: AppColors.kTextColorGrey,
      cursorWidth: 1,
    );
  }
}
