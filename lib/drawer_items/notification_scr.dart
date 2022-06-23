import 'package:flutter/material.dart';
import 'package:flutter_prj_1/common_moul/Drawer_scr.dart';
import 'package:flutter_prj_1/common_moul/appbar.dart';
import 'package:flutter_prj_1/imgslide.dart';

class notification_Src extends StatelessWidget {
  const notification_Src({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(51),
              child: app_bar("Notifications")),
          drawer: drawersrc(), //Assigned the title of appbar
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Center(
                            child: Text("Current Employees Notifications")),
                        semanticContainer: true,
                        color: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Center(
                            child: Text("Current Employees Notifications")),
                        semanticContainer: true,
                        color: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Center(
                            child: Text(
                                '''WELCOME TO NEW EMPLOYEE "SURAJ CHAVAN" ''')),
                        semanticContainer: true,
                        color: Colors.cyanAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Center(
                            child: Text("Current Employees Notifications")),
                        semanticContainer: true,
                        color: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Center(
                            child: Text("Current Employees Notifications")),
                        semanticContainer: true,
                        color: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Center(
                            child: Text("Current Employees Notifications")),
                        semanticContainer: true,
                        color: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child:
                            Center(child: Text("Wish Aniket Happy BirthDay")),
                        semanticContainer: true,
                        color: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
                Container(
                    width: double.infinity,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Center(
                            child: Text("Current Employees Notifications")),
                        semanticContainer: true,
                        color: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
              ],
            ),
          )),
    ));
  }
}
