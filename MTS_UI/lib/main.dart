import 'package:flutter/material.dart';
import './res2c.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title:'METRO TRAVEL SIMPLIFIED',
      home: MyHomePage(),
    );
  }
}
// void res1()
// {
   
// }
void res2()
{
  runApp(Res2s());
}
class MyHomePage extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('RECHARGE')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
        RaisedButton(child:Text('SCAN THE CARD',style: TextStyle(fontWeight:FontWeight.bold),),onPressed:null),
        RaisedButton(child:Text('RECHARGE THE WALLET',style: TextStyle(fontWeight:FontWeight.bold)),onPressed:res2),
        RaisedButton(child:Text('RECHARGE THE CARD',style: TextStyle(fontWeight:FontWeight.bold)),onPressed:null)

        // Card(color:Colors.red,child:Text('TRANSACTIONS')),
        ]
      ),
    );
  }
}