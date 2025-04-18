import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/presentation/widgets/common_test_widget.dart';

class ContinueSection extends StatefulWidget {
  const ContinueSection({super.key});

  @override
  State<ContinueSection> createState() => _ContinueSectionState();
}

class _ContinueSectionState extends State<ContinueSection> {
  // int _currentIndex = 0;

  final List<Map<String, int>> testData = [
    {'total': 10, 'answered': 3},
    {'total': 15, 'answered': 7},
    {'total': 5, 'answered': 2},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            'Continue',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Gap(10),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 34.0),
            child: Row(
              children: List.generate(testData.length, (index) {
                final item = testData[index];
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 8.0,
                  ), // Spacing between items
                  child: SizedBox(
                    width:
                        MediaQuery.of(context).size.width *
                        0.6, // Control card width
                    child: CommonTestWidget(
                      totalQuestions: item['total']!,
                      answeredQuestions: item['answered']!,
                    ),
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
