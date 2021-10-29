import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DoneTasksScreen extends StatelessWidget {
  const DoneTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
          'Done Tasks',
      style: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}
