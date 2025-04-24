import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';

class AchievementTab extends StatelessWidget {
  const AchievementTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: context.paddingS,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildAchievementCard(
                'assets/images/start_test.png',
                'Ranked 1st',
              ),
              _buildAchievementCard(
                'assets/images/start_test.png',
                '100 Questions',
              ),
            ],
          ),
          const Gap(16),
        ],
      ),
    );
  }

  Widget _buildAchievementCard(String imagePath, String title) {
    return Container(
      width: 160,
      height: 160,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(imagePath, height: 80),
          const Gap(12),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
