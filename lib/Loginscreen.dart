// import 'dart:ffi';

// ignore_for_file: unnecessary_const
import 'package:flutter/material.dart';
import 'package:flutter_prj_1/Homescreen.dart';

void main() {
  runApp(login_screen());
}

// ignore: camel_case_types
class login_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .5,
                color: Colors.white,
                child: Image.asset(
                  'Assets/images/logonew.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11)),
                  child: Column(children: [
                    Text(
                      "Login",
                      textScaleFactor: 1.2,
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            hintText: "User name",
                            labelText: "ID")),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          hintText: "Password",
                          labelText: "passcode"),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).popAndPushNamed('/home');
                        },
                        child: Text("Log-in")),
                    SizedBox(
                      height: 2,
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
    ));
  }
}
