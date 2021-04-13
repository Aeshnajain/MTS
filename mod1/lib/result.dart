import 'package:flutter/material.dart';

class result1 extends StatelessWidget
{
  final int ts;
  final Function resetquiz;
  result1(this.ts,this.resetquiz);
  String get myresultphrase
  {
    String resp;
    if(ts<50)
    {
      resp="YOU ARE Sooooooo GOOD!";
    }
    else if(ts<100)
    {
       resp="YOU ARE Soooooooo NICE!";
    }
    else
    {
       resp="YOU ARE Soooooooo AWESOME!";
    }
    return resp;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(child:
    Column(children:<Widget>[Text(myresultphrase,
                               style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold)),
                               FlatButton(onPressed:resetquiz, child: Text("Play once again!",style: TextStyle(fontSize:20),),textColor: Colors.blue,) 
         ]
       )
        
    );
  }
}