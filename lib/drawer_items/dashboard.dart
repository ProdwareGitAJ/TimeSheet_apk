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
              preferredSize: Size.fromHeight(51), child: app_bar("Dashboard")),
          drawer: drawersrc(), //Assigned the title of appbar
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: slideimg(),
                ),
                Container(
                    width: double.infinity,
                    height: 85,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: ListTile(
                          title: Text("Current Employees"),
                          leading: Icon(
                            Icons.person,
                            size: 35,
                          ),
                          tileColor: Colors.lightGreen,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onTap: () {
                            print("pressed on employee......");
                          },
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 85,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          title: Text("Current Employees"),
                          leading: Icon(
                            Icons.person,
                            size: 35,
                          ),
                          tileColor: Colors.limeAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onTap: () {
                            print("pressed on employee......");
                          },
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 85,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          title: Text("Current Employees"),
                          leading: Icon(
                            Icons.person,
                            size: 35,
                          ),
                          tileColor: Colors.cyan,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onTap: () {
                            print("pressed on employee......");
                          },
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 85,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          title: Text("Current Employees"),
                          leading: Icon(
                            Icons.person,
                            size: 35,
                          ),
                          tileColor: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onTap: () {
                            print("pressed on employee......");
                          },
                        ),
                      ),
                    )),
              ],
            ),
          )),
    ));
  }
}
