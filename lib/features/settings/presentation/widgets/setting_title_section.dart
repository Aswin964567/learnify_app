import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SettingTitleSection extends StatelessWidget {
  const SettingTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Text(
            "Settings",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(LucideIcons.x, size: 16),
          ),
        ],
      ),
    );
  }
}
