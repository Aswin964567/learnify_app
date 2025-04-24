import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final Color? titleColor;
  final bool border;
  final bool centerText;

  const SettingsTile({
    super.key,
    required this.title,
    this.subtitle,
    this.trailing,
    this.titleColor,
    this.border = false,
    this.centerText = false,
  });

  @override
  Widget build(BuildContext context) {
    final textAlign = centerText ? TextAlign.center : TextAlign.start;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(title, textAlign: textAlign, style: TextStyle(color: titleColor)),
          subtitle: subtitle != null ? Text(subtitle!) : null,
          trailing: trailing,
        ),
        if (border)
          const Divider(thickness: 1, height: 1, color: Colors.grey),
      ],
    );
  }
}
