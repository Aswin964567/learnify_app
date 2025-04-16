import 'package:go_router/go_router.dart';
import 'package:learnify_app/presentation/bottom_nav/bottom_nav_scaffold.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const BottomNavScaffold()),
  ],
);
