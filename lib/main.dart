import 'package:flutter/material.dart';
import 'package:smoose_20_05/responsive/pages/Authentication.dart';
import 'package:smoose_20_05/responsive/pages/Payments/payments.dart';
import 'package:smoose_20_05/responsive/pages/dashboard/Dashboard.dart';
import 'package:smoose_20_05/responsive/pages/feedbacks/Feedbacks.dart';
import 'package:smoose_20_05/responsive/pages/hotels/managers.dart';
import 'package:smoose_20_05/responsive/pages/hotels/menu.dart';
import 'package:smoose_20_05/routepage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/authpage': (context) => AuthPage(),
      '/routepage': (context) => RoutePage(),
      '/dashboard': (context) => Dashboard(),
      '/payments': (context) => Payments(),
      '/manager': (context) => Manager(),
      '/menu': (context) => Menu(),
      '/feedbacks': (context) => Feedbacks()
    },
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return RoutePage();
  }
}
