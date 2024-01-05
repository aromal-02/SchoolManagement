import 'package:flutter/material.dart';

class Dropdownbutton extends StatefulWidget {
  const Dropdownbutton({super.key});

  @override
  State<Dropdownbutton> createState() => _DropdownbuttonState();
}

class _DropdownbuttonState extends State<Dropdownbutton> {
  String selectedValue = 'Weekly';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: <String>['Weekly', 'Monthly', 'year',]
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
         );
  }
}