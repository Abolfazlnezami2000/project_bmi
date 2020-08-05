import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';
import 'dart:math' as math;

void main() => runApp(Login());
//class s extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'DeliMeals',
//      theme: ThemeData(
//        primarySwatch: Colors.pink,
//        accentColor: Colors.amber,
//        canvasColor: Color.fromRGBO(255, 254, 229, 1),
//        fontFamily: 'Raleway',
//        textTheme: ThemeData.light().textTheme.copyWith(
//            body1: TextStyle(
//              color: Color.fromRGBO(20, 51, 51, 1),
//            ),
//            body2: TextStyle(
//              color: Color.fromRGBO(20, 51, 51, 1),
//            ),
//            title: TextStyle(
//              fontSize: 20,
//              fontFamily: 'RobotoCondensed',
//              fontWeight: FontWeight.bold,
//            )),
//      ),
//    );
//  }
//}


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user, pass;
  String userError, passError;
  SnackBar alarm;
  GlobalKey<ScaffoldState> scaffoldKey;
  @override
  void initState() {
    user = TextEditingController();
    pass = TextEditingController();
    scaffoldKey = GlobalKey<ScaffoldState>();
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text("Login Page "),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Image.asset(
                  "assets/bmi.png",
                  width: 200,
                  height: 200,
                  //fit: BoxFit.,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 8.0),
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: TextField(
                    controller: user,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: "User Name",
                        errorText: userError,
                        contentPadding:
                        EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.0))))),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 8.0),
                child: TextField(
                    controller: pass,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        errorText: passError,
                        contentPadding:
                        EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.0))))),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 8.0),
                child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(8.0))),
                  color: Colors.blue,
                  onPressed: () {
                    //FocusScope.of(context).requestFocus(FocusNode());
                    setState(() {
                      if (user.text.length < 4) {
                        userError = "User Name must be >4";
                      } else if (pass.text.length < 4) {
                        userError = null;
                        passError = "Password must be >4";
                      } else {
                        userError = null;
                        passError = null;
                        alarm = SnackBar(
                            content: Text(
                                "Login successful ! Welcome ${user.text}"));
                        scaffoldKey.currentState.showSnackBar(alarm);
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MyApp()));
                      }
                    });
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
