// home appbar- Aiswarya
// use lucide icons
// eg: Icon(LucideIcons.home)
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Learnify'),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0), // Add space to the right
          child: Row(
            children: [
              _statPill(
                icon: LucideIcons.trophy,
                value: '5',
                color: Color(0xFF7758FF),
              ),
              const Gap(8),
              _statPill(
                icon: LucideIcons.flame,
                value: '56',
                color: Color(0xFFFF8484),
              ),
              const Gap(8),
              _statPill(
                icon: LucideIcons.diamond,
                value: '1250',
                color: Color(0xFFFF6CFD),
              ),
              const Gap(15),
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  LucideIcons.user,
                  size: 18,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _statPill({
    required IconData icon,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, size: 12, color: color),
          const Gap(4),
          Text(
            value,
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
