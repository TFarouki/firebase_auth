import 'package:firebase_auth/theme/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController;
  TextEditingController _passwordController;
  bool isSubmiting = false;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final logo = Image.asset(
      "assets/logo.png",
      height: mq.size.height /4,
    );
    final emailField = TextFormField(
      cursorColor: Colors.white,
      enabled: !isSubmiting,
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: "Somthing@example.com",
        labelText: "Email",
        labelStyle: TextStyle(color : Colors.white),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );
    final passwordField = Column(
      children: [
          TextFormField(
            cursorColor: Colors.white,
          enabled: !isSubmiting,
          controller: _passwordController,
          obscureText: true,
          textInputAction: TextInputAction.done,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: "password",
            labelText: "Password",
            labelStyle: TextStyle(color : Colors.white),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(2.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              child: Text(
                "Forgot Password",
                style: Theme.of(context).textTheme.caption.copyWith(color : Colors.white),
              ),
            )
          ],
        )
      ],
    );
    final fields = Padding(
      padding: EdgeInsets.only(top : 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          emailField,
          passwordField,
        ],
      ),
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: mq.size.width/2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
            "LogIn",
            textAlign: TextAlign.center,
            style : TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )
        ),
        onPressed: (){
          //
        },
      ),
    );
    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        loginButton,
        Padding(padding: EdgeInsets.all(8.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Not a memeber?",
              style : Theme.of(context).textTheme.subtitle1.copyWith(
                color: Colors.white,
              ),
            ),
            MaterialButton(
                child: Text(
                  "Sing up",
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color : Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onPressed: (){
                  Navigator.of(context).pushNamed(AppRoutes.authRegister);
                },
            ),
          ],
        )
      ],
    );
    return Scaffold(
      backgroundColor: Color(0xff8c52ff),
      body: Form(
        key : _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Container(
            height: mq.size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                logo,
                fields,
                Padding(
                  padding: const EdgeInsets.only(bottom : 50),
                  child: bottom,
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
