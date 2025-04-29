import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnify_app/features/home/presentation/screens/home_screen.dart';
import 'package:learnify_app/features/leaderboard/presentation/screens/leaderboard_screen.dart';
import 'package:learnify_app/features/module/presentation/screens/module_screen.dart';
import 'package:learnify_app/features/pyq/presentation/screens/pyq_screen.dart';

import 'bottom_nav_controller.dart';
import 'bottom_nav_widget.dart';

class BottomNavScaffold extends ConsumerWidget {
  const BottomNavScaffold({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavIndexProvider);

    final pages = [
      const HomeScreen(),
      const ModuleScreen(),
      const PreviousYearQuestionsScreen(),
      const LeaderboardScreen(),
    ];

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
