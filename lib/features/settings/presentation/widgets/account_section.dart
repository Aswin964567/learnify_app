import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:lucide_icons/lucide_icons.dart';

import 'setting_switch_tile.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: 'Account',
      icon: LucideIcons.userCog,
      children: [
        AccountTile(title: 'Edit Profile', onTap: () {}),
        Gap(5),
        AccountTile(title: 'Change Password', onTap: () {}),
        Gap(12),
        const Divider(thickness: 0.15),
        Gap(12),
        Center(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: RedButton(
                  title: 'Logout',
                  icon: LucideIcons.logOut,
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: RedButton(
                  title: 'Delete Account',
                  icon: LucideIcons.trash2,
                  onTap: () {},
                  isDestructive: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AccountTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const AccountTile({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFAFAFA),
      ),

      child: ListTile(
        title: Text(
          title,
          style: context.textTheme.bodyLarge?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          // style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        onTap: onTap,
      ),
    );
  }
}

class RedButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final bool isDestructive;

  const RedButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isDestructive ? Colors.red : Colors.redAccent;
    return OutlinedButton.icon(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xFFFAFAFA),
        side: BorderSide(color: color),
        foregroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      icon: Icon(icon, size: 20),
      label: Text(title),
    );
  }
}
