import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prj_1/drawer_items/dashboard.dart';
import 'package:flutter_prj_1/login_auth/Loginscreen.dart';
import 'package:flutter_prj_1/login_auth/verify.dart';
import 'nav.dart';

class app_bar extends StatelessWidget {
  var appbar_title = "";
  app_bar(String title) {
    appbar_title = title;
  }
  @override
  Widget build(BuildContext context) {
    return (AppBar(
      title: Text(appbar_title),
      centerTitle: true,
      actions: [
        Badge(
          badgeContent: Text("12"),
          child: Icon(
            Icons.notifications,
            size: 30,
          ),
          badgeColor: Colors.green,
          position: BadgePosition.topEnd(top: 0, end: 3),
          borderRadius: BorderRadius.circular(1),
          showBadge: true,
        ),
        IconButton(
          onPressed: () {
            // ALERTBOX TO EXIT
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  title: Text("DO YOU WANT TO LOGOUT?"),
                  content: Text("Are you trying to Logout?."),
                  actions: [
                    TextButton(
                      child: Text("YES"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => login_screen()));
                      },
                    ),
                    TextButton(
                      child: Text("NO"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                );
                ;
              },
            );
          },
          icon: Icon(
            Icons.power_settings_new,
            color: Colors.red.shade700,
          ),
        ),
      ],
    ));
  }
}
