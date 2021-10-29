import 'package:flutter/material.dart';
import 'package:flutter_app/modules/counter/cubit/cubit.dart';
import 'package:flutter_app/modules/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
       listener:(context, state) {
         if (state is Counterminusstate)
         {
           print('minus state ${state.counter}');
         }
         if (state is Counterplusstate)
         {
           print('plus state ${state.counter}');
         }

       },
       builder:(context,state){
         return Scaffold(
           appBar: AppBar(
             title: const Text(
                 'Counter'
             ),
           ),
           body: Center(

             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 TextButton(
                   onPressed: (){
                 CounterCubit.get(context).minus();
                   },
                   child:
                   const Text(
                       'MINUS'
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(
                       horizontal: 20),
                   child: Text('${CounterCubit.get(context).counter}',
                     style: const TextStyle(
                       fontSize: 50,
                       fontWeight: FontWeight.w900,
                     ),),
                 ),
                 TextButton(
                   onPressed: (){
                     CounterCubit.get(context).plus();

                   },
                   child:
                   const Text(
                       'PLUS'
                   ),
                 ),
               ],
             ),
           ),
         );
       } ,
      ),
    );
  }
}
