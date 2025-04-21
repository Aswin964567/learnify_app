import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/core/theme/colors/app_colors.dart';
import 'package:learnify_app/core/theme/text_theme.dart';
import 'package:learnify_app/features/leaderboard/presentation/widgets/common_profile_widget.dart';

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
                  margin: const EdgeInsets.symmetric(horizontal: 24),
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
                name: 'Muhammed Rafsal N',
                rank: 25,
                points: 1250,
              ),
            ),

            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                  ),

                  // Scrollable list inside the curved area
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 32,
                    ), // So list starts inside the curve
                    child: TabBarView(
                      children: [
                        LeaderboardList(tabName: 'Weekly'),
                        LeaderboardList(tabName: 'All Time'),
                      ],
                    ),
                  ),
                ],
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
    final List<Map<String, dynamic>> users = List.generate(
      15,
      (index) => {
        'rank': index + 1,
        'name': 'User ${index + 1}',
        'points': 1250 - index * 10,
      },
    );

    return SingleChildScrollView(
      padding: context.paddingHorizontal + context.paddingVertical,
      child: Column(
        children: List.generate(15, (index) {
          final user = users[index];
          return ProfileCard(
            name: user['name'],
            rank: user['rank'],
            points: user['points'],
          );
        }),
      ),
    );
  }
}
