import 'package:course_app_flutter/pages/edit_profile_page.dart';
import 'package:course_app_flutter/pages/home_page.dart';
import 'package:course_app_flutter/pages/login_page.dart';
import 'package:course_app_flutter/pages/main_page.dart';
import 'package:course_app_flutter/pages/nearby_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => const LoginPage(),
    home: (context) => HomePage(),
    main: (context) => const MainPage(),
    editProfile: (context) => EditProfilePage(),
    nearby: (context) => const NearbyPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
}
