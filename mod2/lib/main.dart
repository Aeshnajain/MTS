import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title:'flutter app',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    final List<Transaction> transactions=[
      Transaction(id: 'id1', title: 'Shirts', amount: 55.55, date: DateTime.now()),
      Transaction(id: 'id2', title: 'Groceries', amount: 19.50, date: DateTime.now()),
    ];
    String titleinput;
    String amntinput;
    return Scaffold(
      appBar: AppBar(title: Text('MY EXPENSES')),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
        Card(child:Text('CHART!',style:TextStyle(fontSize:30)),
               color:Colors.blue),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children:<Widget>
               [
                 TextField(decoration: InputDecoration(labelText: 'Title'),
                 onChanged: (val){
                   titleinput=val;
                 },),
                 TextField(decoration: InputDecoration(labelText: 'Price'),
                 onChanged:(val){
                   amntinput=val;
                 }),
                 FlatButton(onPressed: () {
                   print(amntinput);
                   print(titleinput);
                 }, child: Text('Submit Transaction'),textColor: Colors.purple,)

               ]),
        Column(children:transactions.map((txt)
        {
          return Card(child: Row(children:<Widget>[
            Container(
              decoration:BoxDecoration(shape: BoxShape.rectangle,
              color: Colors.amber,border: Border.all() ),
              margin:EdgeInsets.all(20),
              child:Text('\$${txt.amount}',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20)),
              padding: EdgeInsets.all(10),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>
            [
              
              // Container(
              // child:Text(txt.id),
              // color: Colors.lime,
              //  margin:EdgeInsets.all(10),
              // padding: EdgeInsets.all(5),
              // // Text(txt.title),Text(txt.date.toString())
              // ),
              Container(
                child:Text(txt.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              color: Colors.lime,
               margin:EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              ),
              Container(
                child:Text(DateFormat.yMMMMd().format(txt.date)),
              color: Colors.lime,
               margin:EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              ),
              
            ]
            )
          // Text(txt.title,style: TextStyle(fontSize: 25)),color:Colors.amber
                      ]
                    ),
                  );
        }
      ).toList(),
      )
        // Card(color:Colors.red,child:Text('TRANSACTIONS')),
        ]
      ),
    );
  }
}