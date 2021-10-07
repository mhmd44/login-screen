import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("app"),
        actions: [
          Icon(
            Icons.notification_add,
          ),
          Icon(Icons.search),
        ],
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container( color: Colors.green,
              child: const Text(
                'first seller', style: TextStyle(
                fontSize: 30, color: Colors.white,
              ),
              ),
            ),

            Container( color: Colors.blue,
              child: const Text(
                'first seller', style: TextStyle(
                fontSize: 30, color: Colors.white,
              ),
              ),
            ),

            Container( color: Colors.teal,
              child: const Text(
                'first seller', style: TextStyle(
                fontSize: 30, color: Colors.white,
              ),
              ),
            )
          ],
        ),
      ),
      /* body: Container(
        color: Colors.yellow,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                color: Colors.red,
                child: Text(
                  'sell car',
                  style: TextStyle(
                    fontSize: 30,
                    backgroundColor: Colors.red,
                  ),
                )),
            Container(
                color: Colors.green,
                child: Text(
                  'buy car',
                  style: TextStyle(
                    fontSize: 30,
                    backgroundColor: Colors.green,
                  ),
                )),
            Container(
                color: Colors.blue,
                child: Text(
                  'rent car',
                  style: TextStyle(
                    fontSize: 30,
                    backgroundColor: Colors.blue,
                  ),
                )),
            Container(
                color: Colors.teal,
                child: Text(
                  'replace car',
                  style: TextStyle(
                    fontSize: 30,
                    backgroundColor: Colors.teal,
                  ),
                )),
          ],
        ),
      ),*/
    );
  }
}
