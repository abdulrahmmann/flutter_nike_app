

import 'package:flutter/material.dart';
import 'package:nike_app/core/utils/app_colors.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(height: height*.085),
            const BackStackArrow(),
          ],
        )
      ],
    );
  }
}

class BackStackArrow extends StatelessWidget {
  const BackStackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      height: 22,
      width: 22,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffF7825C),
      ),

    );
  }
}