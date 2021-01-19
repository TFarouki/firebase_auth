import 'package:firebase_auth/theme/routes.dart';
import 'package:flutter/material.dart';

class OpeningView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final logo = Image.asset(
        "assets/logo.png",
        height: mq.size.height /4,
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: mq.size.width/2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
            "Login",
            textAlign: TextAlign.center,
            style : TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )
        ),
        onPressed: (){
          Navigator.of(context).pushNamed(AppRoutes.authLogin);
        },
      ),
    );
    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: mq.size.width/2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
            "Register",
            textAlign: TextAlign.center,
            style : TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )
        ),
        onPressed: (){
          Navigator.of(context).pushNamed(AppRoutes.authRegister);
        },
      ),
    );
    final buttons = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        loginButton,
        SizedBox(height: 8.0,),
        registerButton,
      ],
    );
    return Scaffold(
        backgroundColor: Color(0xff8c52ff),
        body:Padding(
            padding: EdgeInsets.fromLTRB(30,70,30,70),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                logo,
                buttons,
              ],
            )
        )
    );
  }
}
