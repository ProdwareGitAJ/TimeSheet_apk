import 'package:flutter/material.dart';
import 'package:flutter_prj_1/common_moul/Drawer_scr.dart';
import 'package:flutter_prj_1/common_moul/appbar.dart';
import 'package:flutter_prj_1/drawer_items/edit_Prof.dart';
import 'package:flutter_prj_1/login_auth/Loginscreen.dart';

class profileSrc extends StatelessWidget {
  const profileSrc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(51),
        child: app_bar("Account"),
      ),
      drawer: drawersrc(),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => edit_ProfileSrc()));
                  },
                  child: Text(
                    "EDIT",
                    style: TextStyle(color: Colors.blue.shade400, fontSize: 17),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 100.0,
                child: ClipRRect(
                  child: Center(child: Image.asset('Assets/images/logi.png')),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ],
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
                Text(
                  "HemantKumar Pal",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("EMPLOYEE ID :"),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "EMPP09",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  textAlign: TextAlign.start,
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
                Text(
                  "hpal@prodwaresol.com",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  textAlign: TextAlign.start,
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
                Text(
                  "+202020202020",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
