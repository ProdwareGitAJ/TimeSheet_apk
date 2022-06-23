import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_prj_1/drawer_items/dashboard.dart';

class Auth_vrfy extends StatelessWidget {
  //const Auth_vrfy({Key? key}) : super(key: key);
  FocusNode focus1 = FocusNode();
  FocusNode focus2 = FocusNode();
  FocusNode focus3 = FocusNode();
  FocusNode focus4 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "2-Step verification",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: TextFormField(
                        autofocus: true,
                        focusNode: focus1,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.white), //<-- SEE HERE
                          ),
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            focus2.requestFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: TextFormField(
                        focusNode: focus2,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.white), //<-- SEE HERE
                          ),
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            //FocusScope.of(context).nextFocus();
                            focus3.requestFocus();
                            //TextInputAction.next;
                          } else if (value.length == 0) {
                            focus1.requestFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: TextFormField(
                        focusNode: focus3,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.white), //<-- SEE HERE
                          ),
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            //FocusScope.of(context).nextFocus();
                            focus4.requestFocus();
                          } else if (value.length == 0) {
                            focus2.requestFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: TextFormField(
                        focusNode: focus4,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.white), //<-- SEE HERE
                          ),
                        ),
                        onChanged: (value) {
                          if (value.length == 0) {
                            focus3.requestFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new home()));
                },
                child: Text(
                  "Log-in",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      )),
    ));
  }
}
