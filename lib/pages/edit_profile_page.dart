import 'package:course_app_flutter/components/app_textfield.dart';
import 'package:course_app_flutter/components/toolbar.dart';
import 'package:course_app_flutter/config/app_strings.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: AppStrings.editProfile),
      body: Column(
        children: const [
          AppTextField(hint: 'First Name'),
          AppTextField(hint: 'Last Name'),
          AppTextField(hint: 'Phone Number'),
          AppTextField(hint: 'Location'),
        ],
      ),
    );
  }
}
