import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/shared/components/components.dart';
import 'package:flutter_app/shared/components/constants.dart';

class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context, index) =>buildTaskitem(tasks[index]),
      separatorBuilder:  (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20,
          ),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
          ),
      itemCount: tasks.length,
              );

  }
}
