import 'package:flutter/material.dart';

class SelectedIndexDropdown extends StatefulWidget {
  @override
  SelectedIndexDropdownState createState() {
    return new SelectedIndexDropdownState();
  }
}

class SelectedIndexDropdownState extends State<SelectedIndexDropdown> {
  final List<String> _dropdownValues = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five"
  ]; //The list of values we want on the dropdown
  String _currentlySelected = ""; //var to hold currently selected value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Index - DropdownButton'),
      ),
      //display currently selected item on dropdown
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(_currentlySelected),
          SizedBox(
            height: 20.0,
          ),
          DropdownButton(
            //map each value from the lIst to our dropdownMenuItem widget
            items: _dropdownValues
                .map((value) => DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    ))
                .toList(),
            onChanged: (String value) {
              //once dropdown changes, update the state of out currentValue
              setState(() {
                _currentlySelected = value;
              });
            },
            //this wont make dropdown expanded and fill the horizontal space
            isExpanded: false,
            //make default value of dropdown the first value of our list
            value: _dropdownValues.first,
          ),
        ],
      )),
    );
  }
}
