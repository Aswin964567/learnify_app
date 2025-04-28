// quiz onboarding screen
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/constants/app_constants.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/features/quiz/presentation/widgets/paper_selection_box.dart';
import 'package:learnify_app/presentation/widgets/common_appbar.dart';
import 'package:learnify_app/presentation/widgets/common_button.dart';
import 'package:lucide_icons/lucide_icons.dart';

class QuizOnboardingScreen extends StatelessWidget {
  const QuizOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [const CommonAppbar()],
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Padding(
            padding: context.paddingHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(AppConstants.defaultTopPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/quiz_onboarding.png'),
                      height: 140,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Gap(50),
                Text('PYQ QUIZ 2024', style: context.textTheme.headlineSmall),
                Gap(10),
                Text(
                  'Practice previous year questions and improve your problem solving skills.',
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: Colors.grey,
                  ),
                ),
                Gap(16),
                PaperSelectionBox(),
                Gap(150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(LucideIcons.bookOpen, size: 18),
                    const SizedBox(width: 6),
                    Text('100 questions', style: context.textTheme.bodyLarge),

                    const SizedBox(width: 16),

                    Icon(LucideIcons.clock, size: 18),
                    const SizedBox(width: 6),
                    Text('120 minutes', style: context.textTheme.bodyLarge),
                  ],
                ),
                Gap(10),
                CommonButton(
                  onPressed: () {
                    // To Quiz attempt screen
                  },
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Start Test',
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Icon(LucideIcons.zap),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
