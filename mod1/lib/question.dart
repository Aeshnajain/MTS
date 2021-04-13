import 'package:flutter/material.dart';

class question extends StatelessWidget
{
  final String ques;
  question(this.ques);
  Widget build(BuildContext context)
  {
    return Container
    (
      width:double.infinity,
      margin: EdgeInsets.all(100),
      child:Text(ques,style: TextStyle(fontSize:25),textAlign:TextAlign.center)
    );
  }

}