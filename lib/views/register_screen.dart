import 'package:flutter/material.dart';
import 'package:firebase_auth/theme/routes.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController;
  TextEditingController _userController;
  TextEditingController _passwordController;
  TextEditingController _repasswordController;
  bool isSubmiting = false;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final logo = Image.asset(
      "assets/logo.png",
      height: mq.size.height /4,
    );
    final userName = TextFormField(
      enabled: !isSubmiting,
      controller: _userController,
      textInputAction: TextInputAction.next,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: "John Doe",
        labelText: "UserName",
        labelStyle: TextStyle(color : Colors.white),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
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
          textInputAction: TextInputAction.next,
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
      ],
    );
    final repasswordField = Column(
      children: [
        TextFormField(
          cursorColor: Colors.white,
          enabled: !isSubmiting,
          controller: _repasswordController,
          obscureText: true,
          textInputAction: TextInputAction.done,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: "re-password",
            labelText: "Confirm Password",
            labelStyle: TextStyle(color : Colors.white),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
    final fields = Padding(
      padding: EdgeInsets.only(top : 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          userName,
          emailField,
          passwordField,
          repasswordField,
        ],
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
          //
        },
      ),
    );
    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        registerButton,
        Padding(padding: EdgeInsets.all(8.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Already a memeber?",
              style : Theme.of(context).textTheme.subtitle1.copyWith(
                color: Colors.white,
              ),
            ),
            MaterialButton(
              child: Text(
                "Login",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color : Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
              onPressed: (){
                Navigator.of(context).pushNamed(AppRoutes.authLogin);
              },
            ),
          ],
        )
      ],
    );
    return Scaffold(
        backgroundColor: Color(0xff34568B),
        body: Form(
          key : _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(30,30,30,0),
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
