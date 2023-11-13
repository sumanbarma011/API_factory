import 'package:flutter/material.dart';

import 'package:prac1/model/user_model.dart';
import 'package:prac1/services/fetch_api.dart';

// import 'model/user_name.dart';

// API ---------------   https://randomuser.me/ -------------------//

class UserUi extends StatefulWidget {
  const UserUi({super.key});

  @override
  State<UserUi> createState() => _UserUiState();
}

class _UserUiState extends State<UserUi> {
  List<UserModel> users = [];

  @override
  void initState() {
    fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: users.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (ctx, index) {
                final user = users[index];
                // final email = user.location.coordinates.;
                // final url = user['picture']['thumbnail'];
                final name = user.name.first;

                return ListTile(
                    // leading: ClipRRect(
                    //     borderRadius: BorderRadius.circular(100),
                    //     child: Image.network(url)),
                    title: Text(name),
                    subtitle: Text(user.email));
              }),
      // floatingActionButton: FloatingActionButton(onPressed: press),
    );
  }

  Future<void> fetch() async {
    final result = await FetchData.press();
    setState(() {
      users = result;
    });
  }
}
