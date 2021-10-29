import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ArchivedTasksScreen extends StatelessWidget {
  const ArchivedTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
        'Archived Tasks',
    style: TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold,
    ),
    );
  }
}
