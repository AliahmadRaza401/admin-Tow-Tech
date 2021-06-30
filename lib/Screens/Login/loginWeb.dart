// import 'dart:html';

import 'package:admin_tow_tech/Screens/mainLayout.dart';
import 'package:flutter/material.dart';

class LoginWeb extends StatefulWidget {
  @override
  _LoginWebState createState() => _LoginWebState();
}

class _LoginWebState extends State<LoginWeb> {
  final _formKey = GlobalKey<FormState>();
  var email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.grey.withOpacity(1), BlendMode.dstATop),
            image: new AssetImage("assets/jpg/carbg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.6,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            decoration: BoxDecoration(
              color: Color(0xff46426c).withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  emialField(),
                  SizedBox(
                    height: 20,
                  ),
                  passwordField(),
                  SizedBox(
                    height: 30,
                  ),
                  SubmitBtn(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget emialField() {
    return TextFormField(
      onChanged: (value) {
        email = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          return "Required";
        }
      },
      cursorColor: Color(0xffff5018),
      cursorWidth: 2.0,
      cursorHeight: 26.0,
      decoration: new InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5),
        hintText: "User Name",
        hintStyle: TextStyle(color: Colors.white54),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 1),
          child: Icon(
            Icons.person,
            color: Colors.red,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Color(0xffff5018), width: 3),
        ),
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      onChanged: (value) {
        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          return "Required";
        }
      },
      cursorColor: Color(0xffff5018),
      cursorWidth: 2.0,
      cursorHeight: 26.0,
      decoration: new InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5),
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.white54),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 1),
          child: Icon(
            Icons.lock,
            color: Colors.red,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Color(0xffff5018), width: 3),
        ),
      ),
    );
  }

  Widget SubmitBtn() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width * 0.8,
      child: FlatButton(
        child: Text(
          "Sign In",
          style: TextStyle(fontSize: 18),
        ),
        onPressed: () {
          print(email);
          print(password);
          if (_formKey.currentState.validate()) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MainLayout()));
            // if (email == "admin" && password == "admin") {
            //   Navigator.of(context)
            //       .push(MaterialPageRoute(builder: (context) => MainLayout()));
          } else {
            showAlertDialog(context);
          }
        },
        color: Colors.red,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(
            width: 30,
          ),
          Container(
              margin: EdgeInsets.only(left: 3),
              child: Text("Logging.. Please wait...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => alert,
    );
  }

  // login alert
  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Okay"),
      onPressed: () {
        Navigator.pop(context);
        // Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> UserLogin()));
      },
    );
    // Widget continueButton = FlatButton(
    //   child: Text("Continue"),
    //   onPressed:  () {
    //     Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context)=> UserRegistration(userMobile:mobileController.text)));
    //      },
    // );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Unauthorized"),
      content: Text(
        "Please Enter valid Email or Password to continue!",
        style: TextStyle(fontSize: 18),
      ),
      actions: [
        cancelButton,
        // continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
