import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/presentation/widgets/common_appbar.dart';
import 'package:learnify_app/features/home/presentation/widgets/continue_section.dart';
import 'package:learnify_app/features/home/presentation/widgets/recommended_section.dart';
import 'package:learnify_app/features/home/presentation/widgets/start_test_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              const CommonAppbar(), // ✅ Your SliverAppBar
            ],
        body: CustomScrollView(
          // ✅ Use CustomScrollView here
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                const Gap(20),
                const StartTestSection(),
                const ContinueSection(),
                const RecommendedSection(),
                const Gap(100),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
