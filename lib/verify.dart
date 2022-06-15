import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Auth_vrfy extends StatelessWidget {
  const Auth_vrfy({Key? key}) : super(key: key);

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
            Center(
              child: Text(
                "2-Step verification",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
                height: 50,
                width: 50,
                child: TextField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                )),
            SizedBox(
                height: 50,
                width: 50,
                child: TextField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                )),
            SizedBox(
                height: 50,
                width: 50,
                child: TextField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                )),
            SizedBox(
                height: 50,
                width: 50,
                child: TextField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                )),
          ],
        ),
      )),
    ));
  }
}