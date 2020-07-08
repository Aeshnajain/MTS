import 'package:flutter/material.dart';
import './main.dart';

// void main()=> runApp(MyApp());

class Res2s extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title:'RES2',
      home: MyHomePage(),
    );
  }
}

void backtomain()
{
  runApp(MyApp());
}

class MyHomePage extends StatelessWidget
{
    Widget build(BuildContext context)
  {
    return Scaffold(
       appBar: AppBar(title: Text('MODES')),
       body:Column(
         mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
         children:<Widget>
         [
           Text('CHOOSE THE PAYMENT MODE:',style: TextStyle(fontSize: 25,color: Colors.black)),
           RaisedButton(child:Text('UPI'),onPressed:null,),
           RaisedButton(child:Text('NET BANKING'),onPressed:null,),
           RaisedButton(child:Text('CREDIT CARD'),onPressed:null,),
           RaisedButton(child:Text('DEBIT CARD'),onPressed:null,),
           FlatButton(onPressed: backtomain, child: Text('back',style: TextStyle(color:Colors.blue,fontSize: 20),))
           
         ]
       )
    );
  }
}