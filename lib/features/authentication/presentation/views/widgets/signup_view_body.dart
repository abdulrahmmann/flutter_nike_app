import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/core/utils/app_colors.dart';
import 'package:nike_app/core/utils/app_styles.dart';
import 'package:nike_app/features/authentication/presentation/views/widgets/custom_text_field.dart';

import 'back_stack_arrow.dart';
import 'custom_auth_button.dart';
import 'custom_google_button.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
                      'Register Account',
                      style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.2,
                          color: AppColors.kGBlackColor1),
                    ),
                    SizedBox(height: height * .01),
                    const Text(
                      'Fill your details or continue\nwith social media',
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                      'Your Name',
                      style: AppStyles.textStyle16.copyWith(
                          fontFamily: 'Raleway',
                          color: AppColors.kGBlackColor1,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 12),
                  const CustomTextField(),
                  const SizedBox(height: 15),

                  Text(
                      'Email Address',
                      style: AppStyles.textStyle16.copyWith(
                          fontFamily: 'Raleway',
                          color: AppColors.kGBlackColor1,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 12),
                  const CustomTextField(),
                  const SizedBox(height: 15),

                  Text('Password',
                      style: AppStyles.textStyle16.copyWith(
                          fontFamily: 'Raleway',
                          color: AppColors.kGBlackColor1,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 12),
                  const CustomTextField(isPassword: true),

                  const SizedBox(height: 24),

                  const CustomAuthenticationButton(
                    textColor: Colors.white,
                    backgroundColor: AppColors.kBlueColor,
                    text: 'Sign Up',
                  ),
                  SizedBox(height: height*.025),
                  const CustomGoogleButton(),
                  SizedBox(height: height*.025),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Have Account?',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            color: AppColors.kTextColorGrey
                        ),
                      ),
                      Text(
                        ' Sign in',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            color: AppColors.kGBlackColor2
                        ),
                      )
                    ],
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





