import 'package:flutter/material.dart';
import 'package:smoose_20_05/responsive/responsive.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: center(),
        tab: center(),
        maxViewDesktop: center(),
        minViewDesktop: center());
  }

  Center center() {
    return Center(
        child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/routepage');
      },
      child: Text('continue'),
    ));
  }
}
