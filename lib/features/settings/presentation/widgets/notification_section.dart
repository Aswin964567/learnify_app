import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import 'setting_switch_tile.dart';

class NotificationsSection extends StatefulWidget {
  const NotificationsSection({super.key});

  @override
  State<NotificationsSection> createState() => _NotificationsSectionState();
}

class _NotificationsSectionState extends State<NotificationsSection> {
  bool pushNotifications = false;
  bool quizReminders = false;
  bool newContent = false;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: 'Notifications',
      icon: LucideIcons.bell,
      children: [
        SettingSwitchTile(
          title: 'Push Notifications',
          subtitle: 'Enable all notifications',
          value: pushNotifications,
          onChanged: (val) {
            setState(() {
              pushNotifications = val;
            });
          },
        ),
        SettingSwitchTile(
          title: 'Quiz Reminders',
          subtitle: 'Get reminded about upcoming quizzes',
          value: quizReminders,
          onChanged: (val) {
            setState(() {
              quizReminders = val;
            });
          },
        ),
        SettingSwitchTile(
          title: 'New Content',
          subtitle: 'Get notified about new quizzes and materials',
          value: newContent,
          onChanged: (val) {
            setState(() {
              newContent = val;
            });
          },
        ),
      ],
    );
  }
}
