// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:course_app_flutter/components/app_textfield.dart';
import 'package:course_app_flutter/components/toolbar.dart';
import 'package:course_app_flutter/components/user_avatar.dart';
import 'package:course_app_flutter/config/app_strings.dart';
import 'package:course_app_flutter/styles/app_color.dart';
import 'package:flutter/material.dart';

enum Gender {
  none,
  male,
  female,
  other,
}

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: AppStrings.editProfile),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: UserAvatar(
                      size: 170,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: const Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const AppTextField(hint: AppStrings.firstName),
              const SizedBox(height: 16),
              const AppTextField(hint: AppStrings.lastName),
              const SizedBox(height: 16),
              const AppTextField(hint: AppStrings.phoneNumber),
              const SizedBox(height: 16),
              const AppTextField(hint: AppStrings.location),
              const SizedBox(height: 16),
              const AppTextField(hint: AppStrings.birthday),
              const SizedBox(height: 16),
              RadioListTile(
                title: const Text(AppStrings.male),
                value: Gender.male,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = Gender.male;
                  });
                },
              ),
              RadioListTile(
                title: const Text(AppStrings.female),
                value: Gender.female,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = Gender.female;
                  });
                },
              ),
              RadioListTile(
                title: const Text(AppStrings.other),
                value: Gender.other,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = Gender.other;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
