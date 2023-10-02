import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption(
    this.route, 
    this.icon,
    this.name,
    this.screen
    );
}