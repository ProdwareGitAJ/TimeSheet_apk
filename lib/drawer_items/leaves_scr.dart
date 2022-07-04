import 'package:flutter/material.dart';
import 'package:flutter_prj_1/common_moul/appbar.dart';
import 'package:flutter_prj_1/drawer_items/dashboard.dart';

class leaves_Src extends StatefulWidget {
  @override
  State<leaves_Src> createState() => _leaves_SrcState();
}

class _leaves_SrcState extends State<leaves_Src> {
  final listItems = [
    'SICK LEAVE',
    'CASUAL LEAVE',
    'MATERNITY LEAVE',
    'VACATIONS',
    'LEAVE WITHOUT PAY',
    'ADMINISTRATIVE'
  ];

  String valueChoose = "SICK LEAVE";

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  title: Center(child: Text("Leave Request")),
                  content: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Ad Details"),
                      ),
                      DropdownButton(
                          value: valueChoose,
                          items: listItems
                              .map((e) => DropdownMenuItem(
                                    child: Text(e),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              valueChoose = value.toString();
                            });
                          })
                    ],
                  ),
                  actions: [
                    TextButton(
                      child: Text("ADD"),
                      onPressed: () {
                        Navigator.of(context).pop();
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
          child: Icon(
            Icons.add,
            color: Colors.cyanAccent,
          ),
          backgroundColor: Colors.deepPurple,
        ),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(51), child: app_bar("Leaves")),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 9),
                child: Text(
                  "Leave Details",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800),
                ),
              ),
              Leave_detalis(),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 9),
                child: Text(
                  "Leave History",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Leave Type",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Requested On:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 19),
                          child: Column(
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 30,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "APPROVED",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "22/02/2002",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Leave Type",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Requested On:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 19),
                          child: Column(
                            children: [
                              Icon(
                                Icons.error_outline_outlined,
                                color: Colors.orange.shade300,
                                size: 30,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "PENDING",
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "22/02/2002",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Leave Type",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Requested On:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 19),
                          child: Column(
                            children: [
                              Icon(
                                Icons.close_rounded,
                                color: Colors.red,
                                size: 30,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "NOT APPROVED",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "22/02/2002",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Leave Type",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Requested On:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 19),
                          child: Column(
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 30,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "APPROVED",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "22/02/2002",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Leave Type",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Requested On:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 19),
                          child: Column(
                            children: [
                              Icon(
                                Icons.error_outline_outlined,
                                color: Colors.orange.shade300,
                                size: 30,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "PENDING",
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "22/02/2002",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Leave Type",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Requested On:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 19),
                          child: Column(
                            children: [
                              Icon(
                                Icons.close_rounded,
                                color: Colors.red,
                                size: 30,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "NOT APPROVED",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "22/02/2002",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )));
  }
}

class Leave_detalis extends StatelessWidget {
  const Leave_detalis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          width: MediaQuery.of(context).size.width * .332,
          height: MediaQuery.of(context).size.height * .19,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 9,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("\nCASUAL\n \n LEAVE"),
              ),
              semanticContainer: true,
              color: Colors.amber.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .332,
          height: MediaQuery.of(context).size.height * .19,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 9,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("\nSICK Leave"),
              ),
              semanticContainer: true,
              color: Colors.greenAccent.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .332,
          height: MediaQuery.of(context).size.height * .19,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 9,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("EMERGENCY"),
              ),
              semanticContainer: true,
              color: Colors.orange.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
