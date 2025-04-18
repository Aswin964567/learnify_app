import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/core/theme/colors/app_colors.dart';
import 'package:lucide_icons/lucide_icons.dart';

class StartTestWidget extends StatelessWidget {
  const StartTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingHorizontalLarge,
      child: Card(
        elevation: 4,

        // margin: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(24),
          ),
          padding: context.paddingM,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Illustration Placeholder
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: context.screenHeight * 0.12,
                    child: Image.asset(
                      'assets/images/start_test.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Gap(16),

              // Title
              Text(
                'Take a mock test',
                style: context.textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(8),

              // Subtitle
              Text(
                'Practice basic arithmetic and problem solving',
                style: context.textTheme.labelMedium?.copyWith(
                  color: Colors.white70,
                ),
              ),
              Spacer(),

              // Info Row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(LucideIcons.bookOpen, color: Colors.white, size: 18),
                  const SizedBox(width: 6),
                  Text(
                    '10 q.',
                    style: context.textTheme.labelMedium?.copyWith(
                      color: Colors.white70,
                    ),
                  ),

                  const SizedBox(width: 16),

                  Icon(LucideIcons.clock, color: Colors.white, size: 18),
                  const SizedBox(width: 6),
                  Text(
                    '180 m.',
                    style: context.textTheme.labelMedium?.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),

              Spacer(),

              // Start Test Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle test start logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: context.paddingM,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Start Test',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8), // Space between text and icon
                      Icon(LucideIcons.zap),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
