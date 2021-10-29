// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_app/models/user/user_model.dart';



class  UsersScreen extends StatelessWidget {

  List<UserModel>  Users = [
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

  UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
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
            ,style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        ),
        const SizedBox(width: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.name
              ,style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Text(user.phone,
              style: const TextStyle(color: Colors.grey),),
          ],
        ),
      ],
    ),
  );

  // build item
// build list
// add item to list
}
