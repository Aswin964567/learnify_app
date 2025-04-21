import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/constants/app_constants.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/core/theme/colors/app_colors.dart';
import 'package:learnify_app/core/theme/text_theme.dart';
import 'package:learnify_app/features/leaderboard/data/leaderboard_dummy_data.dart';
import 'package:learnify_app/features/leaderboard/presentation/widgets/common_profile_widget.dart';

// Leaderboard screen with tabs and top users list.
class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.primary,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(160),
          child: Container(
            padding: context.paddingTopSafe,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Leaderboard',
                  style: AppTextTheme.textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(20),
                Container(
                  height: 40,
                  margin: context.paddingHorizontal,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4E40BD),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.transparent,
                    labelColor: AppColors.primary,
                    unselectedLabelColor: Colors.white,
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    dividerColor: Colors.transparent,
                    tabs: const [Tab(text: 'Weekly'), Tab(text: 'All Time')],
                  ),
                ),
              ],
            ),
          ),
        ),

        body: Column(
          children: [
            //  Fixed user card (below tab bar)
            Container(
              padding: context.paddingHorizontal,
              child: ProfileCard(
                isHighlight: true,
                name: 'Muhammed Rafsal N',
                rank: 25,
                points: 1250,
              ),
            ),

            Expanded(
              child: Container(
                padding: context.paddingHorizontal,
                margin: const EdgeInsets.only(
                  top: AppConstants.leaderboardTopPadding,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: AppConstants.leaderboardTopPadding,
                  ), // So list starts inside the curve
                  child: TabBarView(
                    children: [
                      LeaderboardList(tabName: 'Weekly'),
                      LeaderboardList(tabName: 'All Time'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeaderboardList extends StatelessWidget {
  final String tabName;

  const LeaderboardList({super.key, required this.tabName});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> users = dummyUsers;

    return ListView.builder(
      padding: context.paddingBottomSafe,

      itemCount: users.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final user = users[index];
        return ProfileCard(
          backgroundColor: const Color(0xFFF2F2F2),
          name: user['name'],
          rank: user['rank'],
          points: user['points'],
        );
      },
    );
  }
}
