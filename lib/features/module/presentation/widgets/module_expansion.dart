import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/features/module/presentation/providers/click_provider.dart';
import 'package:learnify_app/features/module/presentation/widgets/expansion_content.dart';

class ModuleExpansion extends ConsumerWidget {
  final int index;
  const ModuleExpansion({super.key, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expansionMap = ref.watch(moduleExpansionProvider);
    final isExpanded = expansionMap[index] ?? false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Module 0${index + 1}'.padLeft(2, '0'),
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            IconButton(
              onPressed: () {
                ref.read(moduleExpansionProvider.notifier).toggle(index);
              },
              icon: Icon(
                isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
            ),
          ],
        ),
        if (isExpanded) const ExpansionContent(),
        Gap(15),
      ],
    );
  }
}
