import 'package:flutter/material.dart';
import 'package:flutter_prj_1/Homescreen.dart';
import 'Loginscreen.dart';
import 'package:flutter_prj_1/Drawer_scr.dart';
import 'package:flutter_prj_1/imgslide.dart';

void main() {
  runApp(projx());
}

class projx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => login_screen(),
        '/home': (context) => home(),
      },
    ));
  }
}
