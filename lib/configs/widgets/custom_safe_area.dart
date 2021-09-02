import 'package:flutter/material.dart';
import 'package:waayu/configs/styles/app_colors.dart';

class CustomSafeArea extends StatelessWidget {
  const CustomSafeArea({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
        child: child,
      ),
    );
  }
}
