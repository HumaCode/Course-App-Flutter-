import 'package:course_app_flutter/components/bottom_navigation_item.dart';
import 'package:course_app_flutter/config/app_icon.dart';
import 'package:course_app_flutter/config/app_strings.dart';
import 'package:course_app_flutter/pages/home_page.dart';
import 'package:course_app_flutter/pages/profile_page.dart';
import 'package:course_app_flutter/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: pages[currentIndex.index],
        bottomNavigationBar: MyBottomNavigation(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ));
  }

  final pages = [
    HomePage(),
    const Center(
      child: Text(AppStrings.favorites),
    ),
    const Center(
      child: Text(AppStrings.add),
    ),
    const Center(
      child: Text(AppStrings.messages),
    ),
    const ProfilePage()
  ];
}

enum Menus {
  home,
  favorite,
  add,
  message,
  user,
}

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  final Menus currentIndex;
  final ValueChanged<Menus> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: const EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.home),
                      icon: AppIcons.icHome,
                      current: currentIndex,
                      name: Menus.home,
                    ),
                  ),
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.favorite),
                      icon: AppIcons.icFavorite,
                      current: currentIndex,
                      name: Menus.favorite,
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.message),
                      icon: AppIcons.icMessage,
                      current: currentIndex,
                      name: Menus.message,
                    ),
                  ),
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.user),
                      icon: AppIcons.icUser,
                      current: currentIndex,
                      name: Menus.user,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                width: 64,
                height: 64,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppIcons.icAdd),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
