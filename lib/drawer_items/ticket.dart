import 'package:flutter/material.dart';
import 'package:flutter_prj_1/common_moul/appbar.dart';

class ticket_Rais extends StatefulWidget {
  @override
  State<ticket_Rais> createState() => _ticket_RaisState();
}

class _ticket_RaisState extends State<ticket_Rais> {
  List<String> dropdownItems = [
    "Account",
    "Hardware",
    "Human Resourse",
    "Operating System",
    "Software",
    "System Admin",
    "Assets"
  ];
  String dropDownValue = "Account";
  String _Value = "Low";

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(51),
        child: app_bar("TICKET RAISE"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ticket Type",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.blueAccent.shade700),
            ),
            DropdownButton(
                isExpanded: true,
                value: dropDownValue,
                items: dropdownItems
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    dropDownValue = value.toString();
                  });
                }),
            Text(
              "Description",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.blueAccent.shade700),
            ),
            TextFormField(
              maxLines: 5,
              minLines: 3,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  hintText: "Descriptions",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Radio(
                        value: "Low",
                        groupValue: _Value,
                        onChanged: (value) {
                          setState(() {
                            _Value = value.toString();
                          });
                        }),
                    Text("LOW")
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Radio(
                        value: "Medium",
                        groupValue: _Value,
                        onChanged: (value) {
                          setState(() {
                            _Value = value.toString();
                          });
                        }),
                    Text("Medium")
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Radio(
                        value: "High",
                        groupValue: _Value,
                        onChanged: (value) {
                          setState(() {
                            _Value = value.toString();
                          });
                        }),
                    Text("High")
                  ],
                ),
                ElevatedButton(onPressed: () {}, child: Text("Raise Ticket"))
              ],
            )
          ],
        ),
      )),
    ));
  }
}
