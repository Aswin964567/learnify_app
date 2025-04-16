import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/core/theme/colors/app_colors.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CommonTestWidget extends StatelessWidget {
  final int totalQuestions;
  final int answeredQuestions;

  const CommonTestWidget({
    super.key,
    this.totalQuestions = 10,
    this.answeredQuestions = 6,
  });

  @override
  Widget build(BuildContext context) {
    double progress =
        totalQuestions == 0 ? 0 : answeredQuestions / totalQuestions;

    return Container(
      padding: context.paddingM,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Math Fundamentals',
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          const Gap(10),
          Text(
            'Practice basic arithmetic and problem solving',
            style: context.textTheme.labelSmall?.copyWith(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(10),
          Row(
            children: [
              const Icon(LucideIcons.bookOpen, size: 15),
              const Gap(10),
              Text(
                '$totalQuestions questions',
                style: context.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Gap(12),

          // Progress indicator
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey.withAlpha(55),
            color: Colors.black,
            minHeight: 20,
            borderRadius: BorderRadius.circular(10),
          ),
        ],
      ),
    );
  }
}
