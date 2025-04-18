import 'package:carousel_slider/carousel_slider.dart';
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
  int _currentIndex = 0;

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
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            'Continue',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Gap(10),

        CarouselSlider.builder(
          itemCount: testData.length,
          options: CarouselOptions(
            height: 160,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            autoPlay: true,
            viewportFraction: 0.85,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          itemBuilder: (context, index, realIndex) {
            final item = testData[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CommonTestWidget(
                totalQuestions: item['total']!,
                answeredQuestions: item['answered']!,
                highlight: index == _currentIndex,
              ),
            );
          },
        ),
      ],
    );
  }
}
