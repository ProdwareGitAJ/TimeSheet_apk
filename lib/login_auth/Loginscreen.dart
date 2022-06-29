// import 'dart:ffi';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
// ignore_for_file: unnecessary_const
import 'package:flutter/material.dart';
import '../login_auth/verify.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
bool _isObsecure = true;

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
                      obscureText: _isObsecure,
                      controller: _pass,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        hintText: "Password",
                        labelText: "passcode",
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObsecure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObsecure = !_isObsecure;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          if (await chk_usr() || true) {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new Auth_vrfy()));
                          } else {
                            Fluttertoast.showToast(
                                msg: "Invalid User-ID or Password!",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.grey.shade300,
                                textColor: Colors.black,
                                fontSize: 16.0);
                            //print("hello");
                          }
                        },
                        child: Text("Log-in")),
                    SizedBox(
                      height: 2,
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
    ));
  }
}

Future<bool> chk_usr() async {
  var map = {"userId": U_id.text, "passwd": _pass.text};
  final body1 = json.encode(map);
  //print(body1);
  try {
    final response = await http.post(
      Uri.parse('https://1a0a-182-72-11-106.in.ngrok.io/loginCheck'),
      headers: {'Content-Type': 'application/json'},
      body: body1,
    );
    apires resp = apires.fromJson(jsonDecode(response.body));
    return (resp.apiStatus);
  } catch (error) {
    print(error);
  }
  return false;
}

class apires {
  final bool apiStatus;
  final String msg;

  const apires({required this.apiStatus, required this.msg});

  factory apires.fromJson(Map<String, dynamic> json) {
    return apires(
      apiStatus: json['apiStatus'],
      msg: json['message'],
    );
  }
}
