import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/modules/archived_tasks/archive_tasks_screen.dart';
import 'package:flutter_app/modules/done_tasks/done_tasks_screen.dart';
import 'package:flutter_app/modules/new_tasks/new_tasks_screen.dart';
import 'package:flutter_app/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates>{
  //constructor
  AppCubit(): super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex=0;
  List<Widget> screens = [
    const NewTasksScreen(),
    const DoneTasksScreen(),
    const ArchivedTasksScreen(),
  ];

  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  void changeIndex(int index){
    currentIndex= index;
    emit(AppChangeBottomNavBarState());
  }
}