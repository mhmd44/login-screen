// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class UserModel{
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class UsersScreen extends StatelessWidget {

  List<UserModel> Users = [
    UserModel(
      id: 1,
      name: 'ali aboelsoud',
      phone: '01002549263',
    ),
    UserModel(
      id: 2,
      name: 'omar gomaa',
      phone: '0106492562',
    ),
    UserModel(
      id: 3,
      name: 'amera ahmed',
      phone: '0106465563',
    ),
    UserModel(
      id: 4,
      name: 'ibrahim',
      phone: '01255559263',
    ),
    UserModel(
      id: 1,
      name: 'ali aboelsoud',
      phone: '01002549263',
    ),
    UserModel(
      id: 2,
      name: 'omar gomaa',
      phone: '0106492562',
    ),
    UserModel(
      id: 3,
      name: 'amera ahmed',
      phone: '0106465563',
    ),
    UserModel(
      id: 4,
      name: 'ibrahim',
      phone: '01255559263',
    ),
    UserModel(
      id: 1,
      name: 'ali aboelsoud',
      phone: '01002549263',
    ),
    UserModel(
      id: 2,
      name: 'omar gomaa',
      phone: '0106492562',
    ),
    UserModel(
      id: 3,
      name: 'amera ahmed',
      phone: '0106465563',
    ),
    UserModel(
      id: 4,
      name: 'ibrahim',
      phone: '01255559263',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users', ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index)=>buildUserItem(Users[index]) ,
          separatorBuilder: (context, index)=>
              Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
                  child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount: Users.length)
    );
  }
  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text('${user.id}'
            ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        ),
        SizedBox(width: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${user.name}'
              ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Text('${user.phone}',
              style: TextStyle(color: Colors.grey),),
          ],
        ),
      ],
    ),
  );

  // build item
// build list
// add item to list
}
