import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import 'setting_switch_tile.dart';

class AppearanceSection extends StatefulWidget {
  const AppearanceSection({super.key});

  @override
  State<AppearanceSection> createState() => _AppearanceSectionState();
}

class _AppearanceSectionState extends State<AppearanceSection> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: 'Appearance',
      icon: LucideIcons.sun,
      children: [
        SettingSwitchTile(
          title: 'Dark Mode',
          subtitle: 'Use dark theme',
          value: darkMode,
          onChanged: (val) {
            setState(() {
              darkMode = val;
            });
          },
        ),
      ],
    );
  }
}
