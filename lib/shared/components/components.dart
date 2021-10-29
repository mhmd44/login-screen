
import 'package:flutter/material.dart';

Widget defaultButton(
    {
  double width = double.infinity,
  Color background= Colors.blue,
  bool isUppercase= true,
  double radius = 10.0,
 required void Function() function,
  required String text,

})=>
    Container(
      width: width,
      height: 40,
      child: MaterialButton(
        onPressed: function
        ,   // theres here a problem function haven't to be with ' () '
        child: Text(
          isUppercase ? text.toUpperCase() : text
        , style: TextStyle(color: Colors.white),),

      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required  String? Function(String?)? validate,   //resolved
  required TextInputType type,
  Function (String)? onSubmit,
  Function()? onTap,
  Function (String)? onChange,
  required  String label,
  required  IconData prefix,
  bool ispassword= false,
  bool isClickable =true,
   IconData? suffix,
   Function()? suffixpressed,
}) => TextFormField(
  enabled: isClickable,
  validator: validate,
  controller: controller,
  keyboardType: type,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
  obscureText: ispassword,
  onTap: onTap,
  decoration:  InputDecoration(
    labelText: label,
    prefixIcon: Icon(prefix),
    suffixIcon: suffix != null? IconButton(
      onPressed: suffixpressed,
        icon: Icon(suffix),
      ) : null,
    border: OutlineInputBorder(),
  ),
);

Widget buildTaskitem(Map model) =>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
       CircleAvatar(
        radius: 40,
        child: Text(
            '${model["time"]}'
        ),
      ),
       const SizedBox(
        width: 20,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text('${model['title']}',
            style: const TextStyle( fontSize: 16, fontWeight: FontWeight.bold
            ),
          ),
          const Text('2 april 2021',
            style: TextStyle(
                color: Colors.grey
            ),)

        ],
      ),
    ],
  ),
);