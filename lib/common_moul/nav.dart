import 'package:flutter/material.dart';
import 'package:flutter_prj_1/drawer_items/Profile_pg.dart';
import 'package:flutter_prj_1/drawer_items/dashboard.dart';
import 'package:flutter_prj_1/drawer_items/leaves_scr.dart';
import 'package:flutter_prj_1/drawer_items/timesheet%20.dart';
import '../login_auth/Loginscreen.dart';
import '../login_auth/verify.dart';

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
        '/timesheet': (context) => timeSheet(),
        '/leaves_src': (context) => leaves_Src(),
        '/profile_src': (context) => profileSrc()
      },
    ));
  }
}
