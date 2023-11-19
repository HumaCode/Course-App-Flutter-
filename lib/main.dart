import 'package:course_app_flutter/pages/edit_profile_page.dart';
import 'package:course_app_flutter/pages/home_page.dart';
import 'package:course_app_flutter/pages/login_page.dart';
import 'package:course_app_flutter/pages/main_page.dart';
import 'package:course_app_flutter/styles/app_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => const MainPage(),
        '/edit_profile': (context) => const EditProfilePage(),
      },
    );
  }
}
