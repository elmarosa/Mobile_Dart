import 'package:auth_app/pages/home.dart';
import 'package:auth_app/pages/profile.dart';
import 'package:auth_app/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const Splash(),
        '/home': (context) => const Home(),
        '/profile': (context) => const Profile(),
      },
    );
  }
}
