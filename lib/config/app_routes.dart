import 'package:course_app_flutter/pages/edit_profile_page.dart';
import 'package:course_app_flutter/pages/home_page.dart';
import 'package:course_app_flutter/pages/login_page.dart';
import 'package:course_app_flutter/pages/main_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => const LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => const MainPage(),
    '/edit_profile': (context) => const EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}
