
import 'package:flutter/material.dart';

import 'otp_verification_view_body.dart';

class OTPVerificationView extends StatelessWidget {
  const OTPVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: OTPVerificationViewBody(),
      ),
    );
  }
}
