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
        appBar: AppBar(title: Center(child: const Text("Login Screen"))),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(15)),
            Image.asset("logo.png"),
            Card(
              child: Column(children: [
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
                      Navigator.of(context).pushNamed('/home');
                    },
                    child: Text("Log-in")),
                SizedBox(
                  height: 2,
                )
              ]),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
    ));
  }
}
