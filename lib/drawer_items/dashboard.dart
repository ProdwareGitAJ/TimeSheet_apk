import 'package:flutter/material.dart';
import 'package:flutter_prj_1/common_moul/Drawer_scr.dart';
import 'package:flutter_prj_1/common_moul/appbar.dart';
import 'package:flutter_prj_1/imgslide.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(51), child: app_bar("dashboard")),
          drawer: drawersrc(), //Assigned the title of appbar
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  child: slideimg(),
                ),
                SizedBox(
                    child: ElevatedButton(
                        onPressed: (() {}), child: Text("GET IT"))),
              ],
            ),
          )),
    ));
  }
}
