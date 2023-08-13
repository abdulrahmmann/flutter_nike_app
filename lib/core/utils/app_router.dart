
import 'package:go_router/go_router.dart';
import 'package:nike_app/features/authentication/presentation/views/forgot_password_view.dart';
import 'package:nike_app/features/authentication/presentation/views/otp_verification_view.dart';
import 'package:nike_app/features/authentication/presentation/views/signin_view.dart';
import 'package:nike_app/features/authentication/presentation/views/signup_view.dart';
import 'package:nike_app/features/onboarding/presentation/views/onboarding_page_view.dart';
import 'package:nike_app/features/onboarding/presentation/views/splash_view.dart';

class AppRouter {
  static const kOnboardingView = '/onboardingView';
  static const kSignInView = '/signInView';
  static const kSignUpView = '/signUpView';
  static const kForgotPasswordView = '/forgotPasswordView';
  static const kOTPVerificationView = '/OTPVerificationView';

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnBoardingPageView(),
      ),
      GoRoute(
        path: kSignInView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kForgotPasswordView,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: kOTPVerificationView,
        builder: (context, state) => const OTPVerificationView(),
      ),
    ],
  );
}

