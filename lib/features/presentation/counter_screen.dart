import 'package:flutter/material.dart';
import 'package:flutter_app_template/core/extensions/context_extensions.dart';
import 'package:flutter_app_template/core/theme/colors/app_colors.dart';
import 'package:flutter_app_template/features/providers/counter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

/// Counter screen using Riverpod for state management
/// and custom `context_extensions` for consistent padding and theming.
class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the counter state from provider
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter', style: context.textTheme.headlineMedium),
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
                "Hello, this is the basic template of flutter application",
                style: context.textTheme.bodyMedium?.copyWith(
                  // Use theme color for consistency and dynamic switching
                  color: context.colorScheme.primary, // ✅ Themed color usage
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const Gap(200),

            // Display the count with themed style
            Text('Count: $count', style: context.textTheme.headlineSmall),
          ],
        ),
      ),

      // Floating action button to increment the counter
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
