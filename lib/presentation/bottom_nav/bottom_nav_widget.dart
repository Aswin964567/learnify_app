import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';

import 'bottom_nav_controller.dart';

class BottomNavWidget extends ConsumerWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavIndexProvider);

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => ref.read(bottomNavIndexProvider.notifier).state = index,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Colors.grey,
      items: [
        _navItem('Home', Icon(LucideIcons.home)),
        _navItem('Learn', Icon(LucideIcons.bookOpen)),
        _navItem('PYQ', Icon(LucideIcons.fileText)),
        _navItem('Leaderboard', Icon(LucideIcons.trophy)),
      ],
    );
  }

  BottomNavigationBarItem _navItem(String label, Icon icon) {
    return BottomNavigationBarItem(icon: icon, label: label);
  }
}
