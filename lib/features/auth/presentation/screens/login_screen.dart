// login screen
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/core/routes/router_constants.dart';
import '../widgets/common_textfield.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/learnify.png', height: 43),
                    Gap(140),
                  ],
                ),
              ),

              Text('Login', style: context.textTheme.headlineLarge),
              Gap(24),
              const CommonTextField(
                label: 'Email',
                hintText: 'admin@gmail.com',
                obscureText: false,
              ),
              Gap(16),
              const CommonTextField(
                label: 'Password',
                hintText: '**********',
                obscureText: true,
              ),
              Gap(32),
              CustomButton(
                text: 'Login',
                onPressed: () {
                  context.pushNamed(RouterConstants.homeRouteName);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      context.pushNamed(RouterConstants.registerRouteName);
                    },
                    child: const Text('Register'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
