import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/constants/app_constants.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/features/profile/presentation/widgets/achievement_tab.dart';
import 'package:learnify_app/features/profile/presentation/widgets/profile_tab.dart';
import 'package:learnify_app/features/profile/presentation/widgets/score_container.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff6A5DE5),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Gap(AppConstants.defaultPadding),
                    Padding(
                      padding: context.paddingL,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                LucideIcons.chevronLeft,
                                size: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                LucideIcons.settings,
                                size: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(8),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 45,
                      child: Image.asset('assets/images/profile.png'),
                    ),
                    const Gap(12),
                    Text(
                      'Rafsal N.',
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    const Gap(12),
                    Container(
                      width: 350,
                      padding: context.paddingS,
                      decoration: BoxDecoration(
                        color: const Color(0xff4C3DD7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ScoreContainer(icon: LucideIcons.trophy, score: '5'),
                          ScoreContainer(icon: LucideIcons.flame, score: '56'),
                          ScoreContainer(icon: LucideIcons.zap, score: '1250'),
                        ],
                      ),
                    ),
                    const Gap(20),
                  ],
                ),
              ),
            ];
          },
          body: Container(
            padding: context.paddingM,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  dividerColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [Tab(text: 'Profile'), Tab(text: 'Achievements')],
                ),

                const Gap(16),
                Expanded(
                  child: TabBarView(children: [ProfileTab(), AchievementTab()]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
