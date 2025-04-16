import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/core/theme/colors/app_colors.dart';
import 'package:learnify_app/features/home/presentation/widgets/start_test_widget.dart';
import 'package:learnify_app/presentation/widgets/common_test_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen', style: context.textTheme.headlineMedium),
      ),
      body: Padding(
        padding: context.paddingHorizontal, // ✅ Clean, reusable, and scalable!
        child: Column(
          children: [
            const Gap(50), //Custom vertical spacing using gap package
            // Container with theme-aware padding and custom color
            Container(
              padding: context.paddingS,
              color: AppColors.onPrimary, // 🎨 Custom static color
              child: Text(
                "Learnify",
                style: context.textTheme.bodyMedium?.copyWith(
                  // Use theme color for consistency and dynamic switching
                  color: context.colorScheme.primary, // ✅ Themed color usage
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            StartTestWidget(),
            Gap(10),
            CommonTestWidget(),
          ],
        ),
      ),
    );
  }
}
