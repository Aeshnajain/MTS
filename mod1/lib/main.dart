import 'package:flutter/material.dart';
// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';

void main()
{
     runApp(MyWidget());
}

class MyWidget extends StatefulWidget
{
    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyWidgetState();
  }
}

class MyWidgetState extends State<MyWidget>
{
  var quest=[
      {'questiontext':'What is your favourite colour?','anstext':[{'choice':'black','score':40},{'choice':'red','score':30},{'choice':'green','score':20},{'choice':'blue','score':10}]},
      {'questiontext':'What is your favourite pet?','anstext':[{'choice':'dog','score':40},{'choice':'cat','score':20},{'choice':'rabbit','score':10},{'choice':'birds','score':30}]},
      {'questiontext':'What is your favourite book?','anstext':[{'choice':'kite runner','score':40},{'choice':'sherlock holmes','score':70},{'choice':'wimpy kid','score':100},{'choice':'secret seven','score':50}]},
      ];
  int quesi=0;
  int totals=0;

  void resetquiz()
  {
    setState(() {
      quesi=0;
      totals=0;
    });
  }
  void ansques(int s)
  {
    totals+=s;
    setState(() {
      quesi=quesi+1;
    });
      
  }
  Widget build(BuildContext ctx)
  { 
    // var quest=[
    //   {'questiontext':'What is your favourite colour?','anstext':['black','blue','red','green']},
    //   {'questiontext':'What is your favourite pet?','anstext':['dog','cat','horse','birds']},
    //   {'questiontext':'What is your favourite book?','anstext':['kite runner','harry potter','5.someone','secret seven']},
    //   ];
     return MaterialApp(home: 
     Scaffold(
       appBar: AppBar(title: Text('My App')),
      body:quesi<quest.length? quiz1(quest,ansques,quesi)
      // Column(
      //   children: <Widget>[
      //     question(quest[quesi]['questiontext']),
      //     ...(quest[quesi]['anstext'] as List).map((answer)
      //     {
      //       return Answer(ansques,answer);
      //     }).toList(),

          // answer(ansques),
          // answer(ansques),
          // answer(ansques),
          // RaisedButton(child:Text('Answer 1'),onPressed:ansques),
          //  RaisedButton(child:Text('Answer 2'),onPressed:()=>print('ANSWER:2 CHOSEN')),
          //   RaisedButton(child:Text('Answer 3'),onPressed:ansques)
        //   ],
        // )
        :result1(totals,resetquiz)
        // Center(child: Text("you did it!"),)
      )
    ) ;
  }
}