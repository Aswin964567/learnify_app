import 'package:flutter/material.dart';

class SettingsSwitchTile extends StatefulWidget {
  final String title;
  final String? subtitle;

  const SettingsSwitchTile({super.key, required this.title, this.subtitle});

  @override
  State<SettingsSwitchTile> createState() => _SettingsSwitchTileState();
}

class _SettingsSwitchTileState extends State<SettingsSwitchTile> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: isSwitched,
      onChanged: (val) => setState(() => isSwitched = val),
      title: Text(widget.title),
      subtitle: widget.subtitle != null ? Text(widget.subtitle!) : null,
      activeColor: Colors.deepPurple,
      contentPadding: EdgeInsets.zero,
    );
  }
}
