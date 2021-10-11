import 'package:flutter/material.dart';

class bmiResultScreen extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;
  bmiResultScreen({
   required this.result,
    required this.age,
    required this.isMale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title: Text(
          'BMI RESULT'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender : ${isMale ? 'Male'  : 'Female'}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            Text('Result : $result',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            Text('Age : $age',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
          ],
        ),
      ),
    );
  }
}
