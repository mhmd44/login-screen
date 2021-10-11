import 'package:flutter/material.dart';
import 'package:flutter_app/Users_screen.dart';
import 'package:flutter_app/bmi_result_screen.dart';
import 'package:flutter_app/bmi_screen.dart';
import 'package:flutter_app/modules/login/login_screen.dart';
import 'package:flutter_app/messenger_screen2.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context)
  {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UsersScreen(),
    );
  }
}


