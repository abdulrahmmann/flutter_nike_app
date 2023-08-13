import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/core/utils/app_colors.dart';
import 'package:nike_app/features/authentication/presentation/views/widgets/custom_text_field.dart';

import 'back_stack_arrow.dart';
import 'custom_auth_button.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

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
                      'Forgot Password',
                      style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.2,
                          color: AppColors.kGBlackColor1),
                    ),
                    SizedBox(height: height * .01),
                    const Text(
                      'Enter your Email account to reset\n your password',
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(),
                  SizedBox(height: 40),

                  CustomAuthenticationButton(
                    textColor: Colors.white,
                    backgroundColor: AppColors.kBlueColor,
                    text: 'Reset Password',
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}





