import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../provider/quiz_provider.dart';
import '../widgets/progress_bar.dart';
import '../widgets/question_progress_indicator.dart';
import '../widgets/option_tile.dart';

class QuizAttemptScreen extends ConsumerStatefulWidget {
  const QuizAttemptScreen({super.key});

  @override
  ConsumerState<QuizAttemptScreen> createState() => _QuizAttemptScreenState();
}

class _QuizAttemptScreenState extends ConsumerState<QuizAttemptScreen> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final questions = ref.watch(questionsProvider);
    final currentQuestion = ref.watch(currentQuestionProvider);

    double progressValue = (currentQuestion + 1) / questions.length;

    return Scaffold(
      backgroundColor: const Color(0xFF7758FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // Top bar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Icon(
                          LucideIcons.x,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                    Text(
                      'Question ${currentQuestion + 1} of ${questions.length}',
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      // style: const TextStyle(
                      //   color: Colors.white,
                      //   fontWeight: FontWeight.w500,
                      // ),
                    ),
                  ],
                ),
              ),
              Gap(10),

              // Progress bar
              ProgressBar(progress: progressValue),
              Gap(10),

              // Question Progress Indicator (small lines)
              QuestionProgressIndicator(totalQuestions: questions.length),
              Gap(24),

              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: questions.length,
                  onPageChanged: (index) {
                    ref.read(currentQuestionProvider.notifier).state = index;
                    ref.read(selectedOptionProvider.notifier).state = null;
                  },
                  itemBuilder: (context, index) {
                    final question = questions[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 10,
                        right: 10,
                        bottom: 70,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                question.question,
                                style: context.textTheme.headlineSmall,
                              ),
                              const SizedBox(height: 24),
                              ...List.generate(
                                question.options.length,
                                (optionIndex) => OptionTile(
                                  optionIndex: optionIndex,
                                  optionText: question.options[optionIndex],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Scroll to see more',
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: Colors.white30,
                      ),
                    ),
                    Icon(
                      LucideIcons.chevronsDown,
                      color: Colors.white30,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
