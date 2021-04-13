import 'package:flutter/material.dart';

class Answer extends StatelessWidget
{
  final Function myfunc;
  final String str;
  Answer(this.myfunc,this.str);
   Widget build(BuildContext context)
   {
      return Container(
        width:double.infinity,
        child:RaisedButton(
          textColor: Colors.white,
          child:Text(str),
          onPressed: myfunc,
          color:Colors.black,
          )
      ); 
   }
}
