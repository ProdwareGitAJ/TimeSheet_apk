import 'package:flutter/material.dart';
import 'package:flutter_prj_1/Ngrok.dart';
import 'package:flutter_prj_1/drawer_items/Profile_pg.dart';
import 'package:flutter_prj_1/drawer_items/dashboard.dart';
import 'package:flutter_prj_1/common_moul/nav.dart';
import 'package:flutter_prj_1/common_moul/Drawer_scr.dart';
import 'package:flutter_prj_1/drawer_items/edit_Prof.dart';
import 'package:flutter_prj_1/imgslide.dart';
import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(projx());
}

class projx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: edit_ProfileSrc(),
    );
  }
}
