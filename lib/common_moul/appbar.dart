import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prj_1/drawer_items/dashboard.dart';
import 'package:flutter_prj_1/login_auth/Loginscreen.dart';
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
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.grey.shade200,
            )),
        IconButton(
          onPressed: () {
            // ALERTBOX TO EXIT
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  title: Text("DO YOU WANT TO EXIT??"),
                  content: Text("Are you trying to exit."),
                  actions: [
                    TextButton(
                      child: Text("YES"),
                      onPressed: () {
                        exit(0);
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
