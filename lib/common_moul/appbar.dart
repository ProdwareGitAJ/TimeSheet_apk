import 'package:flutter/material.dart';
import 'package:flutter_prj_1/common_moul/Drawer_scr.dart';

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
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
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
    ));
  }
}
