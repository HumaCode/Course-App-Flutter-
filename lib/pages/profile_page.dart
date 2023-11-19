import 'package:course_app_flutter/components/toolbar.dart';
import 'package:course_app_flutter/components/user_avatar.dart';
import 'package:course_app_flutter/config/app_routes.dart';
import 'package:course_app_flutter/config/app_strings.dart';
import 'package:course_app_flutter/styles/app_text.dart';
import 'package:flutter/material.dart';

enum ProfileMenu {
  edit,
  logout,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed(AppRoutes.editProfile);
                break;
              case ProfileMenu.logout:
                print('logout');
                break;

              default:
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: ProfileMenu.edit,
                child: Row(
                  children: const [
                    Icon(Icons.edit),
                    SizedBox(width: 8),
                    Text(AppStrings.edit),
                  ],
                ),
              ),
              PopupMenuItem(
                value: ProfileMenu.logout,
                child: Row(
                  children: const [
                    Icon(Icons.logout),
                    SizedBox(width: 8),
                    Text(AppStrings.logout),
                  ],
                ),
              ),
            ];
          })
        ],
      ),
      body: Column(
        children: [
          const UserAvatar(
            size: 90,
          ),
          const SizedBox(height: 24),
          const Text(
            'Humaidi Zakaria',
            style: AppText.header2,
          ),
          const SizedBox(height: 12),
          const Text(
            'humaidi',
            style: AppText.subtitle3,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text('470', style: AppText.header2),
                  Text(AppStrings.followers),
                ],
              ),
              Column(
                children: const [
                  Text('100', style: AppText.header2),
                  Text(AppStrings.posts),
                ],
              ),
              Column(
                children: const [
                  Text('900', style: AppText.header2),
                  Text(AppStrings.following),
                ],
              ),
            ],
          ),
          const Divider(thickness: 1, height: 24),
        ],
      ),
    );
  }
}
