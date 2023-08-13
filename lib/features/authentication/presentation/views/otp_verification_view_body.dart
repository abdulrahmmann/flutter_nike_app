import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/core/utils/app_colors.dart';

import 'widgets/back_stack_arrow.dart';
import 'widgets/custom_auth_button.dart';
import 'widgets/custom_text_field.dart';

class OTPVerificationViewBody extends StatelessWidget {
  const OTPVerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * .05),
              BackStackArrow(
                onTap: () {
                  GoRouter.of(context).pop();
                },
              ),
              const SizedBox(height: 11),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Text(
                      'OTP Verification',
                      style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.2,
                          color: AppColors.kGBlackColor1),
                    ),
                    SizedBox(height: height * .01),
                    const Text(
                      'Please check your email to see the\n verification code',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kGreyColor3,
                          height: 1.5),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'OTP Code',
                style: TextStyle(
                    fontSize: 21,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700),
              ),
              // otp code text field square
              const SizedBox(height: 16),

              const Row(
                children: [
                  CustomOTPTextField(),
                  SizedBox(width: 18,),

                  CustomOTPTextField(),
                  SizedBox(width: 18,),

                  CustomOTPTextField(),
                  SizedBox(width: 18,),

                  CustomOTPTextField(),
                  SizedBox(width: 18,),

                ],
              ),

              const SizedBox(height: 40),

              const CustomAuthenticationButton(
                textColor: Colors.white,
                backgroundColor: AppColors.kBlueColor,
                text: 'Verify',
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Resend code to',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        color: AppColors.kGreyColor4),
                  ),
                  Text(
                    '00:30',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        color: AppColors.kGreyColor4),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class CustomOTPTextField extends StatelessWidget {
  const CustomOTPTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.kGreyColor2,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide:
              const BorderSide(color: AppColors.kGreyColor2, width: 1)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide:
              const BorderSide(color: AppColors.kGreyColor2, width: 1)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide:
              const BorderSide(color: AppColors.kGreyColor2, width: 1)
          ),
        ),
      ),
    );
  }
}
