import 'package:flutter/material.dart';

class BottomNavBarItem {
  final String? title;
  final IconData? icon;
  final Widget? customWidget;

  BottomNavBarItem({
    this.icon,
    this.title,
    this.customWidget,
  }) : assert(icon != null || customWidget != null);
}
