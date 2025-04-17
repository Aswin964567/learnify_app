import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/features/home/presentation/widgets/continue_section.dart';
import 'package:learnify_app/features/home/presentation/widgets/home_appbar_widget.dart';
import 'package:learnify_app/features/home/presentation/widgets/recommended_section.dart';
import 'package:learnify_app/features/home/presentation/widgets/start_test_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(),
      body: Padding(
        padding: context.paddingHorizontal, // ✅ Clean, reusable, and scalable!
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(50), //Custom vertical spacing using gap package

              StartTestSection(),
              Gap(10),
              ContinueSection(),
              Gap(10),
              RecommendedSection(),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
