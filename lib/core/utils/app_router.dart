
import 'package:go_router/go_router.dart';
import 'package:nike_app/features/onboarding/presentation/views/onboarding_page_view.dart';
import 'package:nike_app/features/onboarding/presentation/views/splash_view.dart';

class AppRouter {
  static const kOnboardingView = '/onboardingView';

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
      // GoRoute(
      //   path: kHomeView,
      //   builder: (context, state) => const HomeView(),
      // ),
      // GoRoute(
      //   path: kBookDetailsView,
      //   builder: (context, state) => const BookDetailsView(),
      // ),
    ],
  );
}
