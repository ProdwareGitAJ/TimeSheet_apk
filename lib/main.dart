import 'package:flutter/material.dart';
import 'package:flutter_prj_1/Ngrok.dart';
import 'package:flutter_prj_1/drawer_items/dashboard.dart';
import 'package:flutter_prj_1/common_moul/nav.dart';
import 'package:flutter_prj_1/common_moul/Drawer_scr.dart';
import 'package:flutter_prj_1/imgslide.dart';

void main() {
  runApp(projx());
}

class projx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: nav(),
    );
  }
}
