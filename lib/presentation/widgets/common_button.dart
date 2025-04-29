import 'package:flutter/material.dart';
import 'package:learnify_app/core/constants/app_constants.dart';
import 'package:learnify_app/core/theme/colors/app_colors.dart';

class CommonButton extends StatelessWidget {
  final Color backgroundColor = AppColors.black;
  final Widget widget;
  final VoidCallback? onPressed;
  const CommonButton({super.key, required this.widget, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppConstants.buttonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Color(0xFFEEEEEE)),
          ),
        ),
        onPressed: onPressed,
        child: widget,
      ),
    );
  }
}
