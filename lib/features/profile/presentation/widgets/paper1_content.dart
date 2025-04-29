import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:lucide_icons/lucide_icons.dart';

class PaperIContent extends StatelessWidget {
  const PaperIContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: context.paddingM,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xffE5E5E5)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(LucideIcons.trendingUp, size: 18),
                  Gap(8),
                  Text(
                    'XP Earned',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Gap(20),
              _buildProgressItem('Quantitative Aptitude', 0.82),
              _buildProgressItem('Verbal Ability', 0.41),
              _buildProgressItem('Logical Reasoning', 0.56),
              _buildProgressItem('General Knowledge', 0.95),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProgressItem(String title, double value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gap(5),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: value,
                    minHeight: 12,
                    backgroundColor: const Color(0xfff1f1f1),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xff0A0A23),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Text(
            '${(value * 100).toInt()}%',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
