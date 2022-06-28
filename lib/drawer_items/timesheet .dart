import 'package:flutter/material.dart';
import 'package:flutter_prj_1/common_moul/Drawer_scr.dart';
import 'package:flutter_prj_1/common_moul/appbar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class timeSheet extends StatelessWidget {
  // const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(51), child: app_bar("Timesheet")),
        drawer: const drawersrc(),
        body: SfCalendar(
          view: CalendarView.month,
          firstDayOfWeek: 1,
          cellBorderColor: Colors.transparent,
        )));
  }
}
