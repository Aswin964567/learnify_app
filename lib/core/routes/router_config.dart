import 'package:go_router/go_router.dart';
import 'package:learnify_app/core/routes/router_constants.dart';
import 'package:learnify_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:learnify_app/presentation/bottom_nav/bottom_nav_scaffold.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const BottomNavScaffold()),
    GoRoute(
      path: '/profilescreen',
      name: RouterConstants.profileRouteName,
      builder: (context, state) => ProfileScreen(),
    ),
  ],
);
