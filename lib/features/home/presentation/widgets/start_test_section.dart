// slide effect of start_test_widget - Manu
// use carousel slider(already installed) to slide or use any other if available
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
import 'package:learnify_app/core/theme/colors/app_colors.dart';

import 'start_test_widget.dart';

class StartTestSection extends StatefulWidget {
  const StartTestSection({super.key});

  @override
  State<StartTestSection> createState() => _StartTestSectionState();
}

class _StartTestSectionState extends State<StartTestSection> {
  // final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> cards = const [
      StartTestWidget(),
      StartTestWidget(),
      StartTestWidget(),
      StartTestWidget(),
    ];

    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: cards.length,
          carouselController: null,
          itemBuilder: (context, index, realIndex) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: cards[index],
            );
          },
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.42,
            viewportFraction: 1,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        // Gap(4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(cards.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: _currentIndex == index ? 8.0 : 6.0,
              height: _currentIndex == index ? 8.0 : 6.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    _currentIndex == index
                        ? AppColors.primary
                        : Colors.black.withOpacity(0.3),
              ),
            );
          }),
        ),
      ],
    );
  }
}
