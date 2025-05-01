import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';

class OnboardingCard extends StatelessWidget {
  final String image, title, description;
  final Widget? extraWidget;

  const OnboardingCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.extraWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingXL,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Gap(20),
          Image.asset(
            image,
            fit: BoxFit.contain,
            height: MediaQuery.sizeOf(context).height * .3,
          ),

          Column(
            children: [
              if (extraWidget != null) extraWidget!,
              Gap(30),
              Text(
                title,
                textAlign: TextAlign.center,
                style: context.textTheme.displayMedium?.copyWith(
                  color: Color(0xff5B4BE9),
                  fontSize: 31,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Gap(15),
              Text(
                description,
                textAlign: TextAlign.center,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: Color(0xff666666),
                  fontSize: 16.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
