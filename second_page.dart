import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatefulWidget {

  String br,ln,sn,dn,on;
  SecondPage({Key key,@required this.br,this.ln,this.sn,this.dn, this.on }) : super(key : key);
  @override
  _SecondPageState createState() => _SecondPageState(br: br,ln: ln,sn: sn,dn: dn,on: on);
}

class _SecondPageState extends State<SecondPage> {

  bool _visible = true;
  bool _misible = true;
  bool _nisible = true;
    bool _risible = true;

  String lnh;
  String amount;
  String ww;
  String mm;
  String nn;
  String oo;
  String yy = '';
  String pp = '';
  String qq = '';
  String rr = '';

  var now = DateTime.now();
  int date;
  TextEditingController t1 = TextEditingController();

  String br,ln,sn,dn;
  var on;
  _SecondPageState({this.br,this.ln,this.sn,this.dn,this.on});

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Warning !!!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Get this button clicked the vendor only..'),
                Text('You cant take the order for today if this'),
                Text('button is clicked'),
                Text(''),
                Text('Do you really want to click this button ?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('NO',style: TextStyle(color: Colors.red),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('YES',style: TextStyle(color: Colors.red),),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _visible = false;
                  ww = 'Token delivered on\n ${now.day}-0${now.month}-${now.year} ${now.hour}:${now.minute}:${now.second}';
                  yy = ww;
                });
        }
            )],
        );
      },
    );
  }
  Future<void> _meverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Warning !!!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Get this button clicked the vendor only..'),
                Text('You cant take the order for today if this'),
                Text('button is clicked'),
                Text(''),
                Text('Do you really want to click this button ?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('NO',style: TextStyle(color: Colors.red),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
                child: Text('YES',style: TextStyle(color: Colors.red),),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    _misible = false;
                    mm = 'Token delivered on\n ${now.day}-0${now.month}-${now.year} ${now.hour}:${now.minute}:${now.second}';
                    pp = mm;
                  });
                }
            )],
        );
      },
    );
  }
  Future<void> _reverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Warning !!!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Get this button clicked the vendor only..'),
                Text('You cant take the order for today if this'),
                Text('button is clicked'),
                Text(''),
                Text('Do you really want to click this button ?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('NO',style: TextStyle(color: Colors.red),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
                child: Text('YES',style: TextStyle(color: Colors.red),),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    _nisible = false;
                    nn = 'Token delivered on\n ${now.day}-0${now.month}-${now.year} ${now.hour}:${now.minute}:${now.second}';
                    qq = nn;
                  });
                }
            )],
        );
      },
    );
  }
  Future<void> _severSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Warning !!!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Get this button clicked the vendor only..'),
                Text('You cant take the order for today if this'),
                Text('button is clicked'),
                Text(''),
                Text('Do you really want to click this button ?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('NO',style: TextStyle(color: Colors.red),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
                child: Text('YES',style: TextStyle(color: Colors.red),),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    _risible = false;
                    oo = 'Token delivered on\n ${now.day}-0${now.month}-${now.year} ${now.hour}:${now.minute}:${now.second}';
                    rr = oo;
                  });
                }
            )],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todays Order'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 45,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Card(
                    elevation: 1.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('4th Version..!! Your order has been placed on',style: TextStyle(color: Colors.indigo[800],fontSize: 14),),
                        Text('$on 08:29:41 for the following food items',style: TextStyle(color: Colors.indigo[800],fontSize: 14),),
                        Text(''),
                        Text(br,style: TextStyle(color: Colors.indigo[800],fontSize: 15),),
                        Text(''),
                        Text(' --> Tea',style: TextStyle(color: Colors.deepOrange[800],fontWeight: FontWeight.bold,fontSize: 15),),
                        Text(' --> $ln',style: TextStyle(color: Colors.deepOrange[800],fontWeight: FontWeight.bold,fontSize: 15)),
                        Text(' --> $sn',style: TextStyle(color: Colors.deepOrange[800],fontWeight: FontWeight.bold,fontSize: 15)),
                        Text(' --> $dn',style: TextStyle(color: Colors.deepOrange[800],fontWeight: FontWeight.bold,fontSize: 15)),
                        Text(''),
                        Text('Ordered for the date',style: TextStyle(),),
                        Text('   "${now.day}-0${now.month}-${now.year}"',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 16),),
                        Text('Ordered by "keerthireddy14@gmail.com"',style: TextStyle(color: Colors.lightGreen[900],fontWeight: FontWeight.bold,fontSize: 17)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 55,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 500,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 125,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Visibility(
                                maintainState: true,
                                maintainAnimation: true,
                                maintainSize: true,
                                visible: _visible,
                                child: RaisedButton(
                                  padding: EdgeInsets.all(0.0),
                                  child: Text('BREAKFAST',style: TextStyle(color: Colors.black87),),
                                  color: Colors.grey[350],
                                  onPressed: _neverSatisfied,
                                ),
                              ),
                              Flexible(
                                flex: 28,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  color: Colors.white,
                                ),
                              ),
                              Flexible(
                                flex: 42,
                                child:  Container(
                                  padding: const EdgeInsets.only(left:1.0,top: 1.0,bottom: 4.0),
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Card(
                                    color: Colors.white,
                                    child: Text('$yy'),
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 125,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Visibility(
                                maintainState: true,
                                maintainAnimation: true,
                                maintainSize: true,
                                visible: _misible,
                                child: RaisedButton(
                                  padding: EdgeInsets.all(0.0),
                                  child: Text('LUNCH',style: TextStyle(color: Colors.black87),),
                                  color: Colors.grey[350],
                                  onPressed: _meverSatisfied,
                                ),
                              ),
                              Flexible(
                                flex: 28,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  color: Colors.white,
                                ),
                              ),
                              Flexible(
                                flex: 42,
                                child: Container(
                                  padding: const EdgeInsets.only(left:1.0,top: 1.0,bottom: 4.0),
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Card(
                                    color: Colors.white,
                                    child: Text('$pp'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 125,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Visibility(
                                maintainState: true,
                                maintainAnimation: true,
                                maintainSize: true,
                                visible: _nisible,
                                child: RaisedButton(
                                  padding: EdgeInsets.all(0.0),
                                  child: Text('SNACKS',style: TextStyle(color: Colors.black87),),
                                  color: Colors.grey[350],
                                  onPressed: _reverSatisfied,
                                ),
                              ),
                              Flexible(
                                flex: 28,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  color: Colors.white,
                                ),
                              ),
                              Flexible(
                                flex: 42,
                                child:  Container(
                                  padding: const EdgeInsets.only(left:1.0,top: 1.0,bottom: 4.0),
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Card(
                                    color: Colors.white,
                                    child: Text('$qq'),
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 125,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Visibility(
                                maintainState: true,
                                maintainAnimation: true,
                                maintainSize: true,
                                visible: _risible,
                                child: RaisedButton(
                                  padding: EdgeInsets.all(0.0),
                                  child: Text('DINNER',style: TextStyle(color: Colors.black87),),
                                  color: Colors.grey[350],
                                  onPressed: _severSatisfied,
                                ),
                              ),
                              Flexible(
                                flex: 28,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  color: Colors.white,
                                ),
                              ),
                              Flexible(
                                flex: 42,
                                child:  Container(
                                  padding: const EdgeInsets.only(left:1.0,top: 1.0,bottom: 4.0),
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Card(
                                    color: Colors.white,
                                    child: Text('$rr')
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
