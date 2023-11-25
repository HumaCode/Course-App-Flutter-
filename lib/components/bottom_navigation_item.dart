import 'package:course_app_flutter/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.current,
      required this.name});
  final VoidCallback onPressed;
  final String icon;
  final Menus current;
  final Menus name;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          current == name ? Colors.black : Colors.black.withOpacity(0.3),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
