import 'package:flutter/material.dart';
import 'package:flutter_prj_1/Homescreen.dart';
import 'package:flutter_prj_1/Loginscreen.dart';

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
              child: Center(
                  child: Icon(
                Icons.account_circle,
                size: 150,
                color: Colors.cyan.shade100,
              )),
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
              child: const ListTile(
                title: Text("Timesheet"),
                leading: Icon(
                  Icons.edit_calendar,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
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
