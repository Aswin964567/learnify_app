import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import 'setting_switch_tile.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: 'Language',
      icon: LucideIcons.globe,
      children: [
        ListTile(
          title: const Text(
            'App Language',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Currently set to English',
            style: TextStyle(fontSize: 12),
          ),

          trailing: TextButton(
            onPressed: () {
              // Navigate to language change screen
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(0, 0),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Change'),
                SizedBox(width: 4),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
