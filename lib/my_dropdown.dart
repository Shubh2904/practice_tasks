import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
 
  const MyDropDown({required this.options, required this.hint});

  final List<String> options;
  final String hint;

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  
  String? dropdownValue;

 @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      
      value: dropdownValue,
      
      hint: Text(widget.hint),
      
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },

      items: widget.options.map<DropdownMenuItem<String>>((String value) {
        
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      
      }).toList(),
    
    );
  }
}