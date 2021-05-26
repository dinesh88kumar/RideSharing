import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  final Widget mobile;
  final Widget tab;
  final Widget maxViewDesktop;
  final Widget minViewDesktop;

  Responsive(
      {required this.mobile,
      required this.tab,
      required this.maxViewDesktop,
      required this.minViewDesktop});

  @override
  _ResponsiveState createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 585) {
          return widget.mobile;
        }
        if (constraints.maxWidth < 950) {
          return widget.tab;
        }
        if (constraints.maxWidth < 1150) {
          return widget.minViewDesktop;
        } else {
          return widget.maxViewDesktop;
        }
      }),
    );
  }
}
