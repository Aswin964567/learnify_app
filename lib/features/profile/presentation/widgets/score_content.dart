import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';

class ScoreContent extends StatelessWidget {
  const ScoreContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingM,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xffE5E5E5)),
      ),
      child: Column(
        children: const [
          _ScoreRow(label: 'XP Earned', icon: LucideIcons.zap, value: '1250'),
          Gap(10),
          _ScoreRow(label: 'Level', icon: LucideIcons.trophy, value: '5'),
          Gap(10),
          _ScoreRow(label: 'Streak', icon: LucideIcons.flame, value: '56'),
        ],
      ),
    );
  }
}

class _ScoreRow extends StatelessWidget {
  final String label;
  final IconData icon;
  final String value;

  const _ScoreRow({
    required this.label,
    required this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          padding: context.paddingXS,
          decoration: BoxDecoration(
            color: const Color(0xffF5F5F5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Icon(icon, size: 16, color: Colors.black),
              Gap(5),
              Text(
                value,
                style: context.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
