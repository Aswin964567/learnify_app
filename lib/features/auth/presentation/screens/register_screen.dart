// register screen
// login screen
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:learnify_app/core/extensions/context_extensions.dart';
import 'package:learnify_app/core/routes/router_constants.dart';
import '../widgets/common_textfield.dart';
import '../widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                    Gap(100),
                  ],
                ),
              ),

              Text('Register', style: context.textTheme.headlineLarge),
              Gap(20),
              const CommonTextField(
                label: 'Email',
                hintText: 'admin@gmail.com',
                obscureText: false,
              ),
              Gap(12),
              const CommonTextField(
                label: 'Password',
                hintText: '**********',
                obscureText: true,
              ),
              Gap(12),
              const CommonTextField(
                label: 'Email',
                hintText: 'admin@gmail.com',
                obscureText: false,
              ),
              Gap(12),
              const CommonTextField(
                label: 'Password',
                hintText: '**********',
                obscureText: true,
              ),
              Gap(25),
              CustomButton(
                text: 'Register',
                onPressed: () {
                  context.pushNamed(RouterConstants.homeRouteName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
