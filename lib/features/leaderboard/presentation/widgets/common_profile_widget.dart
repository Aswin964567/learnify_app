import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/core/theme/colors/app_colors.dart';
import 'package:lucide_icons/lucide_icons.dart';

// Profile card widget for displaying rank, name and points.
class ProfileCard extends StatelessWidget {
  final int rank;
  final String name;
  final int points;
  final bool isHighlight;
  final Color? backgroundColor;
  final Color? textColor;

  const ProfileCard({
    super.key,
    required this.rank,
    required this.name,
    required this.points,
    this.isHighlight = false,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.paddingVerticalXS,
      padding: context.paddingM,

      decoration: BoxDecoration(
        color: isHighlight ? AppColors.onPrimary : backgroundColor,
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
              style: context.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
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
                style: context.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4E40BD),
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
                    const Icon(LucideIcons.zap, size: 12, color: Colors.black),
                    const Gap(4),
                    Text(
                      '$points',
                      style: context.textTheme.labelSmall?.copyWith(
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
