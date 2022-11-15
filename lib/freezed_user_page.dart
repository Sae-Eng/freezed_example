import 'package:flutter/material.dart';
import 'package:freezed_example/api/user_request.dart';
import 'package:freezed_example/model/user.dart';

class FreezedUserPage extends StatelessWidget {
  const FreezedUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userRequest = UserRequest();
    List<User> userList = <User>[];

    return Scaffold(
      body: FutureBuilder<List<User>>(
        future: userRequest.getAllUser(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
          userList = snapshot.data ?? <User>[];
          return ListView.builder(
            itemCount: userList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                shadowColor: Colors.black,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    // UserName
                    Row(
                      children: [
                        Text(userList[index].id.toString() + ':'),
                        Text(userList[index].username),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // Email
                      children: [
                        Text('Email:'),
                        Text(userList[index].email),
                      ],
                    ),
                    Row(
                      // Phone
                      children: [
                        Text('Phone:'),
                        Text(userList[index].phone),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
