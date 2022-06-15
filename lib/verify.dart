import 'package:flutter/material.dart';

class Auth_vrfy extends StatelessWidget {
  const Auth_vrfy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 30)),
          Center(
            child: Text(
              "2-Step verification",
              textScaleFactor: 1.2,
              style: TextStyle(
                  color: Color.fromARGB(255, 44, 44, 44),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
              color: Colors.grey.shade300,
              margin: EdgeInsets.only(left: 0, right: 200, top: 150, bottom: 0),
              child: Column(
                children: [
                  Text("User name"),
                  Text("User name"),
                  Text("User name"),
                ],
              ))
        ]),
      )),
    ));
  }
}
