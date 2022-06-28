import 'package:flutter/material.dart';
import 'package:flutter_prj_1/common_moul/appbar.dart';

class leaves_Src extends StatelessWidget {
  const leaves_Src({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(51), child: app_bar("Leaves")),
        body: Container(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 55.0, left: 10, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22))),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Title",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22))),
            ),
          ]),
        )));
  }
}
