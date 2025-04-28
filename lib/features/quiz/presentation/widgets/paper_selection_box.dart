import 'package:flutter/material.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';

class PaperSelectionBox extends StatelessWidget {
  const PaperSelectionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFEEEEEE)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Paper 1
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const SizedBox(width: 8),
                Text('Paper 1', style: context.textTheme.bodyLarge),
              ],
            ),
          ),

          // Divider (no padding)
          const Divider(color: Color(0xFFEEEEEE), height: 1, thickness: 1),

          // Paper 2
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const SizedBox(width: 8),
                Text('Paper 2', style: context.textTheme.bodyLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
