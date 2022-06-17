import 'package:flutter/material.dart';
import 'package:flutter_prj_1/Drawer_scr.dart';
import 'package:flutter_prj_1/Loginscreen.dart';
import 'package:flutter_prj_1/imgslide.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Home Page"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).popAndPushNamed('/');
                },
                icon: Icon(
                  Icons.power_settings_new,
                  color: Colors.red.shade700,
                ),
              ),
            ],
          ),
          drawer: drawersrc(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: slideimg(),
                )
              ],
            ),
          )),
    ));
  }
}
