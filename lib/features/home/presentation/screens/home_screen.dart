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
    return const Scaffold(body: HomeScrollView());
  }
}

class HomeScrollView extends StatelessWidget {
  const HomeScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      headerSliverBuilder:
          (context, innerBoxIsScrolled) => [const CommonAppbar()],
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            StartTestSection(),
            Gap(20),
            ContinueSection(),
            Gap(20),
            RecommendedSection(),
            Gap(50), // bottom space
          ],
        ),
      ),
    );
  }
}
