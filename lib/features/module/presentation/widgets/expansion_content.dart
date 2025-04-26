import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
          child: Row(
            children: List.generate(testData.length, (index) {
              final item = testData[index];
              return Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 3,
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
      ],
    );
  }
}
