import 'package:flutter/material.dart';
import 'package:pcg_num/splash.dart';
import 'package:pcg_num/login.dart';
import 'package:pcg_num/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/login': (context) => const LoginPage(),
          '/register': (context) => const SignUpPage(),
        }
    );
  }
}
