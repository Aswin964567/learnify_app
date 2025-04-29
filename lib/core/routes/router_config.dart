import 'package:go_router/go_router.dart';
import 'package:learnify_app/core/routes/router_constants.dart';
import 'package:learnify_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:learnify_app/features/quiz/presentation/screens/quiz_onboarding_screen.dart';
import 'package:learnify_app/features/settings/presentation/screens/settings_screen.dart';
import 'package:learnify_app/presentation/bottom_nav/bottom_nav_scaffold.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const BottomNavScaffold()),
    GoRoute(
      path: '/profileScreen',
      name: RouterConstants.profileRouteName,
      builder: (context, state) => ProfileScreen(),
    ),
    GoRoute(
      path: '/settingsScreen',
      name: RouterConstants.settingsRouteName,
      builder: (context, state) => SettingsScreen(),
    ),
    GoRoute(
      path: '/quizOnboardingScreen',
      name: RouterConstants.quizOnboardingRouteName,
      builder: (context, state) => QuizOnboardingScreen(),
    ),
  ],
);
