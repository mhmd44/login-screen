
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

      var emailControl= TextEditingController();
      var passControl= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(),
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child:  Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                 Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 40.0),
                TextFormField(
                  controller: emailControl,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value){print (value);},
                  onChanged: (value){print(value);},
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  controller: passControl,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (value){print (value);},
                  onChanged: (value){print(value);},
                  decoration:  InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(width: double.infinity, color: Colors.blue,
                  child: MaterialButton(
                    onPressed: (){
                      print(emailControl.text);
                      print(passControl.text);

                    },
                    child: Text('login', style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(height: 15.0),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(onPressed: (){}, child: Text('Register Now'),)
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
