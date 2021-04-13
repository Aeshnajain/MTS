import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class quiz1 extends StatelessWidget
{
  final List<Map<String,Object> > quest;
  final int quesi;
  final Function ansques;
  quiz1(this.quest,this.ansques,this.quesi);
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        children: <Widget>[
          question(quest[quesi]['questiontext']),
          ...(quest[quesi]['anstext'] as List<Map<String,Object> >).map((answer)
          {
            return Answer(()=>ansques(answer['score']),answer['choice']);
          }).toList(),

          // answer(ansques),
          // answer(ansques),
          // answer(ansques),
          // RaisedButton(child:Text('Answer 1'),onPressed:ansques),
          //  RaisedButton(child:Text('Answer 2'),onPressed:()=>print('ANSWER:2 CHOSEN')),
          //   RaisedButton(child:Text('Answer 3'),onPressed:ansques)
          ],
        );
  }
}