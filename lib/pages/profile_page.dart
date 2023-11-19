import 'package:course_app_flutter/components/toolbar.dart';
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
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed('/edit_profile');
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
                    Text('Edit'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: ProfileMenu.logout,
                child: Row(
                  children: const [
                    Icon(Icons.logout),
                    SizedBox(width: 8),
                    Text('Logout'),
                  ],
                ),
              ),
            ];
          })
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: Image.asset(
              'assets/temp/user1.png',
              width: 90,
              height: 90,
            ),
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
                children: [
                  Text('470', style: AppText.header2),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text('100', style: AppText.header2),
                  Text('Posts'),
                ],
              ),
              Column(
                children: [
                  Text('900', style: AppText.header2),
                  Text('Following'),
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
