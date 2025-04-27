import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/features/leaderboard/data/leaderboard_dummy_data.dart';
import 'package:learnify_app/features/leaderboard/presentation/widgets/common_profile_widget.dart';

class LeaderboardList extends StatelessWidget {
  final String tabName;

  const LeaderboardList({super.key, required this.tabName});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> users = dummyUsers;

    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(12),
          ListView.builder(
            padding: context.paddingBottomSafe,
            shrinkWrap: true,
            itemCount: users.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final user = users[index];
              return Padding(
                padding: context.paddingHorizontal,
                child: CommonProfileWidget(
                  backgroundColor: const Color(0xFFF2F2F2),
                  name: user['name'],
                  rank: user['rank'],
                  points: user['points'],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
