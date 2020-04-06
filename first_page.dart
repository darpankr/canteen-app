import 'package:canio_app/screens/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  String br,ln,sn,dn,on;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),

        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Text('ENTER THE DETAILS',style: TextStyle(color: Colors.teal),),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Breakfast',
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (text){
                      br = text;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Lunch',
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (text){
                      ln = text;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Snacks',
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (text){
                      sn = text;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Dinner',
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (text){
                      dn = text;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Yesterday Date'
                    ),
                    keyboardType: TextInputType.datetime,
                    onChanged: (datetime) {
                      on = datetime;
                    },
                  ),
                  RaisedButton(
                    child: const Text('Click'),
                    color: Colors.teal,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(
                        br: br,ln: ln,sn: sn,dn:dn,on: on
                      )),);
                    },
                  ),
                  Spacer(flex: 1,),
                  Text('darpan@creation',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.purple),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
