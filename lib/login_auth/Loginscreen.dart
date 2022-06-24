// import 'dart:ffi';
import 'dart:convert';
import 'package:http/http.dart' as http;
// ignore_for_file: unnecessary_const
import 'package:flutter/material.dart';
import '../login_auth/verify.dart';

void main() {
  runApp(login_screen());
}

// ignore: camel_case_types
class login_screen extends StatefulWidget {
  @override
  State<login_screen> createState() => _login_screenState();
}

final U_id = TextEditingController();
final _pass = TextEditingController();

class _login_screenState extends State<login_screen> {
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
                padding: const EdgeInsets.only(top: 18),
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
                        keyboardType: TextInputType.number,
                        controller: U_id,
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            hintText: "User ID",
                            labelText: "ID")),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _pass,
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
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new Auth_vrfy()));
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

Future<String> chk_usr() async {
  //var map = {"id": int.parse(U_id.text), "passwd": _pass.text};
  var map = {"id": 1, "passwd": "Joshi"};
  print(map["passwd"].runtimeType);
  //print(map);
  final body = json.encode(map);
  //final response = false;
  try {
    final response = await http.post(
        Uri.parse("https://2689-182-72-11-106.in.ngrok.io/loginCheck"),
        body: body,
        headers: {"Content-Type": "application/json"});
    //final responseData = json.encode(response.body);

    if (response == "true") {
      print(response);
      return "true";
    } else {
      print(response);
      return "false";
    }
  } catch (error) {
    print("error");
  }
  return "false";
}
