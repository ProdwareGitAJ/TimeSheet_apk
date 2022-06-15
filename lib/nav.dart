import 'package:flutter/material.dart';
import 'package:flutter_prj_1/Homescreen.dart';
import 'package:flutter_prj_1/Loginscreen.dart';
import 'package:flutter_prj_1/verify.dart';

class nav extends StatelessWidget {
  const nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => login_screen(),
        '/home': (context) => home(),
        '/auth_vrfy': (context) => Auth_vrfy(),
      },
    ));
  }
}
