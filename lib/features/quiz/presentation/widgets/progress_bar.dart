import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ProgressBar extends StatelessWidget {
  final double progress; // value between 0.0 to 1.0

  const ProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          // Filled progress
          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                width: constraints.maxWidth * progress,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFB444), // Orange fill color
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 4),
                ),
              );
            },
          ),
          // Alarm icon
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(LucideIcons.alarmClock, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
