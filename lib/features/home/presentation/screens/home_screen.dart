import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/features/home/presentation/widgets/home_appbar_widget.dart';
import 'package:learnify_app/features/home/presentation/widgets/start_test_widget.dart';
import 'package:learnify_app/presentation/widgets/common_test_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(),
      body: Padding(
        padding: context.paddingHorizontal, // ✅ Clean, reusable, and scalable!
        child: Column(
          children: [
            const Gap(50), //Custom vertical spacing using gap package

            StartTestWidget(),
            Gap(10),
            CommonTestWidget(),
          ],
        ),
      ),
    );
  }
}
