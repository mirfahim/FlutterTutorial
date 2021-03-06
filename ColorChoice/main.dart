import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title:"Androidmonks",
    home: Scaffold(
      body: LDropDown(),

),
  ),
    );

}


class LDropDown extends StatefulWidget {
  @override
  _LDropDownState createState() => _LDropDownState();
}

class _LDropDownState extends State<LDropDown> {
  String dropdownValue = 'Green';
  List<String> dropdownItems = <String>[
    'Green',
    'Red',
    'Yellow',
    'Blue',
    "Pink",
    "Orange"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _getColor(dropdownValue),
      child: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 36,
          elevation: 8,
          style: TextStyle(color: Colors.deepPurple, fontSize: 36),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }

  Color _getColor(String _color) {
    if (_color.compareTo("Green") == 0) {
      return Colors.green;
    } else if (_color.compareTo("Red") == 0) {
      return Colors.red;
    } else if (_color.compareTo("Yellow") == 0) {
      return Colors.yellow;
    } else if (_color.compareTo("Pink") == 0) {
      return Colors.pink;
    } else if (_color.compareTo("Orange") == 0) {
      return Colors.orange;
    } else if (_color.compareTo("Blue") == 0) {
      return Colors.blue;
    } else {
      return Colors.white;
    }
  }
    
}
