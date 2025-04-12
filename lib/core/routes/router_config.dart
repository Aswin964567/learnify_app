import 'package:flutter_app_template/features/presentation/counter_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CounterScreen(),
    ),
  ],
);