// start test widget- Manu
// if any package is available -use it
import 'package:flutter/material.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:lucide_icons/lucide_icons.dart';

class StartTestWidget extends StatelessWidget {
  const StartTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: context.paddingM,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF6C63FF),
          borderRadius: BorderRadius.circular(24),
        ),
        padding: context.paddingL,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Illustration Placeholder
            SizedBox(
              height: context.screenHeight * 0.12,
              child: Image.asset(
                'assets/images/start_test.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 16),

            // Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Take a mock test',
                style: context.textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Subtitle
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Practice basic arithmetic and problem solving',
                textAlign: TextAlign.center,
                style: context.textTheme.bodySmall?.copyWith(
                  color: Colors.white70,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Info Row
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(LucideIcons.bookOpen, color: Colors.white70, size: 18),
                const SizedBox(width: 6),
                Text(
                  '10 q.',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: Colors.white70,
                  ),
                ),

                const SizedBox(width: 16),

                Icon(LucideIcons.clock, color: Colors.white70, size: 18),
                const SizedBox(width: 6),
                Text(
                  '180 m.',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

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
                  padding: context.paddingS,
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
    );
  }
}
