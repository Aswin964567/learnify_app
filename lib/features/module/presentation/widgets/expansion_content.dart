import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/presentation/widgets/common_test_widget.dart';

class ExpansionContent extends StatefulWidget {
  const ExpansionContent({super.key});

  @override
  State<ExpansionContent> createState() => _ExpansionContentState();
}

class _ExpansionContentState extends State<ExpansionContent> {
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
        const Gap(10),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: context.paddingHorizontal,
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
