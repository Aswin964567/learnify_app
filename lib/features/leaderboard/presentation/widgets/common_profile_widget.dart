import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/core/theme/colors/app_colors.dart';

import 'package:lucide_icons/lucide_icons.dart';

// Reusable Profile Card
class ProfileCard extends StatelessWidget {
  final int rank;
  final String name;
  final int points;
  final bool isHighlight;

  const ProfileCard({
    super.key,
    required this.rank,
    required this.name,
    required this.points,
    this.isHighlight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: context.paddingM,
      decoration: BoxDecoration(
        color: isHighlight ? Colors.white : const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(16),
        boxShadow:
            isHighlight
                ? [
                  const BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ]
                : [],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.onPrimary,
            child: Text(
              rank.toString().padLeft(2, '0'),
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Gap(12),
          CircleAvatar(backgroundColor: AppColors.primary),
          const Gap(12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Color(0xFF4E40BD),
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                padding: context.paddingXS,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(LucideIcons.zap, size: 14, color: Colors.black),
                    const Gap(4),
                    Text(
                      '$points',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
