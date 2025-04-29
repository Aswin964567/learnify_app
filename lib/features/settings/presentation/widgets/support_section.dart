import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'setting_switch_tile.dart';

class SupportSection extends StatelessWidget {
  const SupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: 'Support',
      icon: LucideIcons.lifeBuoy,
      children: [
        SupportTile(title: 'Help Center', onTap: () {}),
        Gap(3),
        SupportTile(title: 'Contact Support', onTap: () {}),
        Gap(3),
        SupportTile(title: 'FAQ', onTap: () {}),
      ],
    );
  }
}

class SupportTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const SupportTile({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.grey.shade300, width: 1.2),
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFAFAFA),
      ),

      child: ListTile(
        title: Text(
          title,
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          // style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
