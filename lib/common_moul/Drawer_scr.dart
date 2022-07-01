import 'package:flutter/material.dart';
import 'package:flutter_prj_1/drawer_items/Profile_pg.dart';
import 'package:flutter_prj_1/drawer_items/dashboard.dart';
import 'package:flutter_prj_1/drawer_items/leaves_scr.dart';
import 'package:flutter_prj_1/drawer_items/notification_scr.dart';
import 'package:flutter_prj_1/drawer_items/timesheet%20.dart';

class drawersrc extends StatelessWidget {
  const drawersrc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: MediaQuery.of(context).size.width * 0.70,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: CircleAvatar(
                      radius: 50.0,
                      child: ClipRRect(
                        child: Center(
                            child: Image.asset('Assets/images/logi.png')),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, top: 0),
                    child: Text(
                      "EMPP09\nHEMANTKUMAR PAL",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home()));
              },
              child: ListTile(
                title: Text("Dashboard"),
                leading: Icon(
                  Icons.space_dashboard,
                  color: Colors.blue.shade900,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => timeSheet()));
              },
              child: const ListTile(
                title: Text("Timesheet"),
                leading: Icon(
                  Icons.edit_calendar,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => notification_Src()));
              },
              child: ListTile(
                title: Text("Notification"),
                leading: Icon(Icons.notifications, color: Colors.cyan.shade300),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => leaves_Src()));
              },
              child: const ListTile(
                title: Text("Service"),
                leading: Icon(
                  Icons.settings_accessibility,
                  color: Colors.green,
                ),
              ),
            ),
            InkWell(
              child: const ListTile(
                title: Text("Ticket Raise"),
                leading: Icon(
                  Icons.receipt,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profileSrc()));
              },
              child: const ListTile(
                title: Text("Profile"),
                leading: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              child: const ListTile(
                title: Text("Work Contact"),
                leading: Icon(
                  Icons.contact_page,
                  color: Colors.orangeAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
