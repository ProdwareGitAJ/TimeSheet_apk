import 'package:flutter/material.dart';
import 'package:flutter_prj_1/common_moul/Drawer_scr.dart';
import 'package:flutter_prj_1/common_moul/appbar.dart';
import 'package:flutter_prj_1/imgslide.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class timeSheet extends StatelessWidget {
  // const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(51), child: app_bar("Timesheet")),
          drawer: drawersrc(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SfCalendar(
                    view: CalendarView.week,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                    child: Column(
                  children: [
                    SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * .9,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.green.shade300)),
                            onPressed: (() {}),
                            child: Text("IN TIME"))),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * .9,
                      child: ElevatedButton(
                          onPressed: (() {}), child: Text("ADD BREAK")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * .9,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.redAccent.shade200)),
                            onPressed: (() {}),
                            child: Text("TIME OUT")))
                  ],
                )),
              ],
            ),
          )),
    ));
  }
}
