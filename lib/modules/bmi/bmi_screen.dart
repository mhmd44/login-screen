import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/modules/bmi_result/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120;
  int weight= 40;
  int age =20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),

      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
               children: [
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         isMale = true;
                       });
                     },
                     child: Container(
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale? Colors.blue : Colors.grey[400],
                          ),
                         child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image(
                               image: AssetImage('assets/images/man.png'),
                             height: 90,
                             width: 90,
                           ),
                           SizedBox(height: 15),
                           Text(
                               'MALE',
                             style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                         ],
                       ),

                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         isMale = false;
                       });
                     },
                     child: Container(
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                         color: isMale?  Colors.grey[400] : Colors.blue,

                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image(image: AssetImage('assets/images/female.png'),
                           width: 90,
                           height: 90,
                           ),
                           SizedBox(height: 15),
                           Text(
                             'FEMALE',
                             style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                         ],
                       ),

                     ),
                   ),
                 ),

               ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),),
                        SizedBox(width: 5,),
                        Text('CM',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                    Slider(value: height, max: 220, min: 80,
                        onChanged: (value){
                     setState(() {
                       height=value;
                     });
                    })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'weight',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('$weight',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight-',
                                mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              )

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('$age',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              )

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              height: 50,
              onPressed: (){
                double result = weight/pow(height/100,2);
                print(result.round());
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context)=> bmiResultScreen(
                    age: age,
                    isMale: isMale,
                    result: result.round(),
                  ),
                ),
                );
              },
              child: Text(
              'CALCULATE',style: TextStyle(
              color: Colors.white
            ),
            ),
            ),
          )
        ],
      ),
    );
  }
}
