import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/core/routes/router_constants.dart';
import 'package:learnify_app/features/auth/presentation/widgets/onboarding_card.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  String? _selectedSubject;
  String? _selectedSchedule;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  void _goToNextPage() {
    if (_currentPage < 2) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: const Duration(milliseconds: 400),
        curve: Curves.linear,
      );
    } else {
      context.pushNamed(RouterConstants.homeRouteName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final onboardingPages = [
      OnboardingCard(
        image: 'assets/images/onboarding1.png',
        title: 'Welcome to Your JRF Companion',
        description:
            'Crack the NET JRF with confidence! Get curated quizzes, mock tests, and performance insights to help you stay ahead.',
      ),
      OnboardingCard(
        image: 'assets/images/onboarding2.png',
        title: 'Select Your Subject',
        description:
            'Choose the subject you\'re preparing for in Paper II. We’ll customize your quizzes and mock tests accordingly.',
        extraWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: DropdownButtonFormField<String>(
            value: _selectedSubject,
            decoration: InputDecoration(
              hintText: 'Select Subject',
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xffDFDFDF)),
              ),
            ),
            items: const [
              DropdownMenuItem(
                value: 'Computer science',
                child: Text('Computer science'),
              ),
              DropdownMenuItem(value: 'Commerce', child: Text('Commerce')),
            ],
            onChanged: (value) {
              setState(() {
                _selectedSubject = value;
              });
            },
          ),
        ),
      ),
      OnboardingCard(
        image: 'assets/images/onboarding3.png',
        title: 'Set Your Test Schedule',
        description:
            'How often would you like to take mock tests? We\'ll remind you and keep you on track with your preparation.',
        extraWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: DropdownButtonFormField<String>(
            value: _selectedSchedule,
            decoration: InputDecoration(
              hintText: 'Select Frequency',
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xffDFDFDF)),
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'Every day', child: Text('Every day')),
              DropdownMenuItem(
                value: 'Every 2 day',
                child: Text('Every 2 day'),
              ),
              DropdownMenuItem(value: 'Weekly', child: Text('Weekly')),
            ],
            onChanged: (value) {
              setState(() {
                _selectedSchedule = value;
              });
            },
          ),
        ),
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: context.paddingVertical,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: onboardingPages,
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: onboardingPages.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0xff5B4BE9),
                dotColor: Color(0xffD7D7D7),
                dotHeight: 10,
                dotWidth: 10,
              ),
              onDotClicked: (index) {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.linear,
                );
              },
            ),
            const Gap(16),
            Padding(
              padding: context.paddingHorizontal,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff5B4BE9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: context.paddingM,
                  minimumSize: const Size(double.infinity, 48),
                ),
                onPressed: _goToNextPage,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Continue'),
                    Gap(10),
                    Icon(LucideIcons.arrowRight, color: Colors.white),
                  ],
                ),
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
