import 'package:course_app_flutter/components/post_item.dart';
import 'package:course_app_flutter/styles/app_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('Title App'),
        centerTitle: true,
        actions: const [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 24);
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 1000; i++) {
      users.add('User Number $i');
    }
  }
}
