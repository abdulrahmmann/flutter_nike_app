
import 'package:go_router/go_router.dart';
import 'package:nike_app/features/authentication/presentation/views/sign_in_view.dart';
import 'package:nike_app/features/onboarding/presentation/views/onboarding_page_view.dart';
import 'package:nike_app/features/onboarding/presentation/views/splash_view.dart';

class AppRouter {
  static const kOnboardingView = '/onboardingView';
  static const kSignInView = '/signInView';

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
    ],
  );
}

