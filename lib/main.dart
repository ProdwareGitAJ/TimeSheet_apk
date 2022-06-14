import 'package:flutter/material.dart';
import 'package:flutter_prj_1/imgslide.dart';

void main() {
  runApp(jola());
}

class jola extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.power_settings_new),
            )
          ],
        ),
        body: slideimg(),
        drawer: Container(
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      'Menu bar',
                      style: TextStyle(
                        color: Color.fromARGB(255, 211, 12, 12),
                        fontSize: 34,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                ListTile(
                  leading: Icon(Icons.add_reaction_sharp),
                  title: Text('Employee'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
