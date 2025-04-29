import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import '../provider/quiz_provider.dart';

class OptionTile extends ConsumerWidget {
  final int optionIndex;
  final String optionText;

  const OptionTile({
    super.key,
    required this.optionIndex,
    required this.optionText,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedOption = ref.watch(selectedOptionProvider);

    bool isSelected = selectedOption == optionIndex;

    return GestureDetector(
      onTap: () {
        ref.read(selectedOptionProvider.notifier).state = optionIndex;
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orangeAccent : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? Colors.orangeAccent : Colors.black,
          ),
        ),
        child: Text(
          optionText,
          style: context.textTheme.bodyLarge,
          //  style: const TextStyle(fontSize: 16)
        ),
      ),
    );
  }
}
