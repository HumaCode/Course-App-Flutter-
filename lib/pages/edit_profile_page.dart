import 'package:course_app_flutter/components/app_textfield.dart';
import 'package:course_app_flutter/components/toolbar.dart';
import 'package:course_app_flutter/components/user_avatar.dart';
import 'package:course_app_flutter/config/app_strings.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: AppStrings.editProfile),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: const [
            UserAvatar(
              size: 120,
            ),
            AppTextField(hint: AppStrings.firstName),
            SizedBox(height: 16),
            AppTextField(hint: AppStrings.lastName),
            SizedBox(height: 16),
            AppTextField(hint: AppStrings.phoneNumber),
            SizedBox(height: 16),
            AppTextField(hint: AppStrings.location),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
