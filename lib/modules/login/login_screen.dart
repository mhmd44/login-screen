
import 'package:flutter/material.dart';
import 'package:flutter_app/shared/components/components.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
      var emailControl= TextEditingController();

      var passControl= TextEditingController();

      var formkey = GlobalKey<FormState>();
      bool isPasswordshow = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(),
      body: Padding(
        padding:  const EdgeInsets.all(20.0),
        child:  Center(
          child: SingleChildScrollView(
            child: Form(
              key:formkey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                 defaultFormField(
                   controller: emailControl,
                   prefix: Icons.email,
                   label: 'email address',
                   type: TextInputType.emailAddress,
                   validate: (value){
                     if (value!.isEmpty){
                       return 'email must not to be empty';
                     }
                     return null;
                   }

                   ),
                  const SizedBox(height: 15.0),
                defaultFormField(
                    controller: passControl,
                    prefix: Icons.lock,
                    label: 'password',
                    type: TextInputType.visiblePassword,
                    suffix: isPasswordshow ? Icons.visibility : Icons.visibility_off ,
                    ispassword: isPasswordshow,
                    suffixpressed: (){
                      setState(() {
                        isPasswordshow = !isPasswordshow;
                      });
                    },
                    validate: (value){
                      if (value!.isEmpty){
                        return 'password must not to be empty';
                      }
                      return null;
                    }

                ),
                  const SizedBox(height: 20.0),
                  defaultButton(
                      width: double.infinity,
                      background: Colors.blue,
                      function: (){
                        if(formkey.currentState!.validate()){
                          print(emailControl.text);
                          print(passControl.text);
                        }

                      },
                      text: 'login', isUppercase: true
                  ),
                  const SizedBox(height: 20.0),
                  defaultButton(    // not have validator
                      width: double.infinity,
                      background: Colors.red,
                      function: (){
                        print(emailControl.text);
                        print(passControl.text);
                      },
                      text: 'ReGIster', isUppercase: false
                  ),
                  const SizedBox(height: 15.0),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account?'),
                        TextButton(onPressed: (){}, child: const Text('Register Now'),)
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
