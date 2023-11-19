import 'package:course_app_flutter/styles/app_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/temp/user1.png',
            width: 90,
            height: 90,
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
