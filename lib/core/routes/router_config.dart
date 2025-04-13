import 'package:flutter_app_template/features/home/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => const HomeScreen())],
);
