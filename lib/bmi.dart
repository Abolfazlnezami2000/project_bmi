import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double sliderValue = 172;
  int weight = 62;
  int age = 26;
  Color firstcColor = Colors.white;
  Color secondcColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Color.fromRGBO(58, 53, 53, 1.0),
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(58, 53, 53, 1.0),
            title: Text("BMI"),
            elevation: 1.5,
            centerTitle: true,
          ),
          // Main Column
          body: Column(
            children: <Widget>[
              Container(
                  height: 140.0,
                  // first Row
                  child: Row(
                    children: <Widget>[
                      //first column
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(35, 32, 32, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Color.fromRGBO(88, 88, 88, 0.8),
                                    offset: Offset(2, 2),
                                    blurRadius: 8),
                              ],
                            ),
                            margin: EdgeInsets.fromLTRB(8.0, 8.0, 4.0, 8.0),
                            padding: EdgeInsets.all(20.0),
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  firstcColor = Colors.redAccent;
                                  secondcColor = Colors.white;
                                });
                              },
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/png-woman.png",
                                    width: 50,
                                    color: firstcColor,
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(color: firstcColor),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      //second column
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(35, 32, 32, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Color.fromRGBO(88, 88, 88, 0.8),
                                    offset: Offset(2, 2),
                                    blurRadius: 8),
                              ],
                            ),
                            margin: EdgeInsets.fromLTRB(4.0, 8.0, 8.0, 8.0),
                            padding: EdgeInsets.all(20.0),
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  secondcColor = Colors.redAccent;
                                  firstcColor = Colors.white;
                                });
                              },
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/png-male.png",
                                    width: 50,
                                    color: secondcColor,
                                  ),
                                  Text("Male",
                                      style: TextStyle(color: secondcColor)),
                                ],
                              ),
                            )),
                      ),
                    ],
                  )),
              //second Row
              Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(35, 32, 32, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color.fromRGBO(88, 88, 88, 0.8),
                          offset: Offset(2, 2),
                          blurRadius: 8),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                  padding: EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("height",
                              style: TextStyle(color: Colors.white70)),
                          Row(
                            children: <Widget>[
                              Text(
                                sliderValue.toString().substring(0, 3),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26.0),
                              ),
                              Text("cm",
                                  style: TextStyle(color: Colors.white70))
                            ],
                          ),
                          CupertinoSlider(
                              activeColor: Colors.redAccent,
                              value: sliderValue,
                              min: 120,
                              max: 249,
                              divisions: 120,
                              onChanged: (c) {
                                setState(() {
                                  sliderValue = c;
                                });
                              })
                        ],
                      )
                    ],
                  )),
              //3th Row
              Container(
                  child: Row(
                    children: <Widget>[
                      //first column 3th Row
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(35, 32, 32, 1),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Color.fromRGBO(88, 88, 88, 0.8),
                                    offset: Offset(2, 2),
                                    blurRadius: 8),
                              ],
                            ),
                            margin: EdgeInsets.fromLTRB(8.0, 8.0, 4.0, 8.0),
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "weight",
                                  style: TextStyle(color: Colors.white70),
                                ),
                                Text(
                                  weight.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 26.0),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    FloatingActionButton(
                                      mini: true,
                                      onPressed: () {
                                        setState(() {
                                          ++weight;
                                        });
                                      },
                                      backgroundColor: Colors.black45,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                    FloatingActionButton(
                                      mini: true,
                                      onPressed: () {
                                        setState(() {
                                          --weight;
                                        });
                                      },
                                      backgroundColor: Colors.black45,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                      //second column 3th Row
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(35, 32, 32, 1),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Color.fromRGBO(88, 88, 88, 0.8),
                                    offset: Offset(2, 2),
                                    blurRadius: 8),
                              ],
                            ),
                            margin: EdgeInsets.fromLTRB(8.0, 8.0, 4.0, 8.0),
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "age",
                                  style: TextStyle(color: Colors.white70),
                                ),
                                Text(
                                  age.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 26.0),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    // plus button
                                    FloatingActionButton(
                                      mini: true,
                                      onPressed: () {
                                        setState(() {
                                          ++age;
                                        });
                                      },
                                      backgroundColor: Colors.black45,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                    //remove button
                                    FloatingActionButton(
                                      mini: true,
                                      onPressed: () {
                                        setState(() {
                                          --age;
                                        });
                                      },
                                      backgroundColor: Colors.black45,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                    ],
                  )),
              // 4th Row
              Flexible(
                fit: FlexFit.tight,
                child: MaterialButton(
                  onPressed: () {
                    String status;
                    double bmi = weight / math.pow((sliderValue / 100), 2);
                    if (bmi < 18.5)
                      status = "under weight";
                    else if (bmi > 18.5 && bmi < 24.9)
                      status = "healthy weight";
                    else if (bmi > 24.5 && bmi < 29.9)
                      status = "over weight";
                    else if (bmi > 30.0)
                      status = "obese";
                    else
                      status = "error ! your bmi is $bmi";
                    showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text("Your status is ..."),
                          content: Text(status),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text("dismiss"),
                            )
                          ],
                        ));
                  },
                  color: Colors.redAccent,
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0))),
                  minWidth: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
