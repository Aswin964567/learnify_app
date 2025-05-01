// quiz completed screen
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/presentation/widgets/common_button.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../presentation/widgets/common_appbar.dart';
import '../widgets/metric_card.dart';

class QuizCompleteScreen extends StatelessWidget {
  const QuizCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFF6F6F6),
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [const CommonAppbar()],
        body: SingleChildScrollView(
          child: Padding(
            padding: context.paddingHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                Text(
                  'Quiz\nCompleted',
                  textAlign: TextAlign.center,
                  style: context.textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Gap(24),
                Image.asset(
                  'assets/images/quiz_complete.png', // your image here
                  height: 160,
                ),
                Gap(32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MetricCard(
                        title: 'Total XP',
                        icon: LucideIcons.zap,
                        value: '1250',
                      ),
                      MetricCard(
                        title: 'Time',
                        icon: LucideIcons.clock,
                        value: '1:45',
                      ),
                      MetricCard(
                        title: 'Accuracy',
                        icon: LucideIcons.goal,
                        value: '87%',
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
                Gap(34),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      CommonButton(
                        backgroundColor: Colors.white,
                        widget: Text(
                          'Try Again',
                          style: context.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          // Restart the quiz
                        },
                      ),
                      const SizedBox(height: 12),
                      CommonButton(
                        widget: Text(
                          'Continue',
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        onPressed: () {
                          // Navigate to the next screen
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
