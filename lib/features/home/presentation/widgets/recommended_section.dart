import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/presentation/widgets/common_test_widget.dart';

class RecommendedSection extends StatefulWidget {
  const RecommendedSection({super.key});

  @override
  State<RecommendedSection> createState() => _RecommendedSectionState();
}

class _RecommendedSectionState extends State<RecommendedSection> {
  final List<Map<String, int>> testData = [
    {'total': 10, 'answered': 0},
    {'total': 15, 'answered': 0},
    {'total': 5, 'answered': 0},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(12),
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            'Recommended for you',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Gap(10),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0), // initial left padding
            child: Row(
              children: List.generate(testData.length, (index) {
                final item = testData[index];
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 8.0,
                  ), // space between cards
                  child: CommonTestWidget(
                    totalQuestions: item['total']!,
                    answeredQuestions: item['answered']!,
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
