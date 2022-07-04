import 'package:flutter/material.dart';
import 'package:flutter_prj_1/common_moul/Drawer_scr.dart';
import 'package:flutter_prj_1/common_moul/appbar.dart';
import 'package:flutter_prj_1/login_auth/Loginscreen.dart';

class edit_ProfileSrc extends StatelessWidget {
  const edit_ProfileSrc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(51),
          child: app_bar("Edit Account"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 100.0,
                  child: ClipRRect(
                    child: Center(child: Image.asset('Assets/images/logi.png')),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User Name : ",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter your username',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("EMPLOYEE ID :"),
                      SizedBox(
                        height: 2,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter Employee ID',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "E-mail :",
                        style: TextStyle(fontSize: 17),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter your E-mail',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Work Contact :",
                        style: TextStyle(fontSize: 17),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter Work Contact',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
