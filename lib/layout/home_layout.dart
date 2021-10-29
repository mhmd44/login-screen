
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/modules/archived_tasks/archive_tasks_screen.dart';
import 'package:flutter_app/modules/done_tasks/done_tasks_screen.dart';
import 'package:flutter_app/modules/new_tasks/new_tasks_screen.dart';
import 'package:flutter_app/shared/components/components.dart';
import 'package:flutter_app/shared/components/constants.dart';
import 'package:flutter_app/shared/cubit/cubit.dart';
import 'package:flutter_app/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatelessWidget
{


  late Database database;

  var scaffoldfkey= GlobalKey<ScaffoldState>();
  var formkey= GlobalKey<FormState>();

  bool isbottomsheetshown =false;

  IconData fabicon = Icons.edit;

  var titlecontroller= TextEditingController();
  var timecontroller= TextEditingController();
  var datecontroller= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context , states){} ,
        builder: (context , states){
          AppCubit cubit =AppCubit.get(context);
          return Scaffold(
            key: scaffoldfkey,
            appBar: AppBar(
              title:  Text(cubit.titles[cubit.currentIndex],
              ),
            ),
            body: ConditionalBuilder(
              condition:true ,
              builder: (context)=> cubit.screens[cubit.currentIndex],
              fallback: (context)=> Center(child: CircularProgressIndicator()),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                if(isbottomsheetshown)
                {
                  if(formkey.currentState!.validate()){
                    insertToDatabase(
                        title: titlecontroller.text,
                        date: datecontroller.text,
                        time: timecontroller.text
                    )
                        .then((value) {
                      getDataFromDatabase(database).then((value) {
                        Navigator.pop(context);
                        // setState(() {
                        //   isbottomsheetshown= false;
                        //   fabicon= Icons.edit;
                        //
                        //   tasks= value;
                        // });
                      });

                    });

                  }
                }
                else
                {
                  scaffoldfkey.currentState!.showBottomSheet(
                        (context) => Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(20,),
                      child: Form(
                        key: formkey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            defaultFormField(

                                controller: titlecontroller,
                                type: TextInputType.text,
                                validate: (String? value)  {
                                  if(value!.isEmpty)
                                  {
                                    return 'title must not to be empty';
                                  }
                                  return null;
                                },
                                label: 'Task Title',
                                prefix: Icons.title),

                            SizedBox(height: 15),
                            defaultFormField(

                                onTap:(){
                                  showTimePicker(context: context,
                                      initialTime: TimeOfDay.now()
                                  ).then((value) {
                                    timecontroller.text= value!.format(context).toString();
                                    print(value.format(context));
                                  }
                                  );
                                } ,
                                controller: timecontroller,
                                type: TextInputType.datetime,
                                validate: (String? value)  {
                                  if(value!.isEmpty)
                                  {
                                    return 'time must not to be empty';
                                  }
                                  return null;
                                },
                                label: 'Task Time',
                                prefix: Icons.watch_later_outlined),
                            SizedBox(height: 15),
                            defaultFormField(

                                onTap:(){
                                  showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime.parse('2021-12-03'))
                                      .then((value) {
                                    datecontroller.text= DateFormat.yMMMd().format(value!);
                                  });
                                } ,
                                controller: datecontroller,
                                type: TextInputType.datetime,
                                validate: (String? value)  {
                                  if(value!.isEmpty)
                                  {
                                    return 'date must not to be empty';
                                  }
                                  return null;
                                },
                                label: 'Task Date',
                                prefix: Icons.calendar_today),

                          ],
                        ),
                      ),
                    ),
                    elevation: 15,
                  ).closed.then((value) {
                    isbottomsheetshown= false;
                    // setState(() {
                    //   fabicon= Icons.edit;
                    // });
                  });
                  isbottomsheetshown=true;
                  // setState(() {
                  //   fabicon= Icons.add;
                  // });
                }
              },
              child:  Icon(fabicon),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap:(index){
                cubit.changeIndex(index);
                // setState((){
                //   currentIndex =index;
                // });
                print(index);
              } ,
              items: const [               //list of items
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: 'Tasks',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.check_circle_outline),
                  label: 'Done',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.archive_outlined),
                  label: 'Archived',
                ),

              ],
            ),

          );
        },
      ),
    );
  }

  void createDatabase()async
  {
    database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database , version)
      {
        print('database created');
        database.execute('CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT , date TEXT , time TEXT , status TEXT)');
      },      // fill this object first
      onOpen: (database){

        print('database opened');

      },

    );
  }
  Future insertToDatabase({
    required String title,
    required String time,
    required String date,
  }) async {
    return await database.transaction((txn)  {
      var reslt;
      reslt= txn.rawInsert('INSERT INTO tasks(title, date, time , status) VALUES ("$title", "$date", "$time" , "new") ')
          .then((value) {
        print('$value inserted successfully');
      }).catchError((error){
        print('error when inserting new record ${error.toString()}');
      });
      return reslt;
    });
  }

  Future <List<Map>> getDataFromDatabase(database) async{
    return await database.rawQuery('SELECT * FROM tasks');

  }

}


