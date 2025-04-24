import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../widgets/settings_section.dart';
import '../widgets/settings_switch_tile.dart';
import '../widgets/settings_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(LucideIcons.xCircle),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SettingsSection(
            title: 'Notifications',
            children: [
              SettingsSwitchTile(
                title: 'Push Notifications',
                subtitle: 'Enable all notifications',
              ),
              SettingsSwitchTile(
                title: 'Quiz Reminders',
                subtitle: 'Get reminded about upcoming quizzes',
              ),
              SettingsSwitchTile(
                title: 'New Content',
                subtitle: 'Get notified about new quizzes and materials',
              ),
            ],
          ),
          SettingsSection(
            title: 'Appearance',
            children: [
              SettingsSwitchTile(
                title: 'Dark Mode',
                subtitle: 'Use dark theme',
              ),
            ],
          ),
          SettingsSection(
            title: 'Language',
            children: [
              SettingsTile(
                title: 'App Language',
                subtitle: 'Currently set to English',
                trailing: Text(
                  'Change',
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ),
            ],
          ),
          SettingsSection(
            title: 'Support',
            children: [
              SettingsTile(title: 'Help Center'),
              SettingsTile(title: 'Contact Support'),
              SettingsTile(title: 'FAQ'),
            ],
          ),
          SettingsSection(
            title: 'Account',
            children: [
              SettingsTile(title: 'Edit Profile'),
              SettingsTile(title: 'Change Password'),
              SizedBox(height: 8),
              SettingsTile(
                title: 'Logout',
                titleColor: Colors.deepPurple,
                border: true,
                centerText: true,
              ),
              SettingsTile(
                title: 'Delete Account',
                titleColor: Colors.red,
                border: true,
                centerText: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
