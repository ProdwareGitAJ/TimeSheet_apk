import 'package:flutter/material.dart';
import 'package:flutter_prj_1/common_moul/Drawer_scr.dart';
import 'package:flutter_prj_1/imgslide.dart';

class timeSheet extends StatelessWidget {
  // const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Timesheet"),
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
                Card(
                  color: Colors.grey,
                ),
              ],
            ),
          )),
    ));
  }
}
