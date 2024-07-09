// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class RadioExample extends StatefulWidget {
  
  final String heading;
  final List<String> options;

  const RadioExample({this.heading="Heading...", this.options=const ["A","B","C"]});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  
  String? selected;
  
  @override
  Widget build(BuildContext context) {

    return Column(
      
      children: [
        
        Expanded(child: Text(widget.heading)),
    
        Expanded(
          child: ListView.builder(
            
            itemCount: widget.options.length,
            
            itemBuilder: (context, index) {
              
              return RadioListTile<String>(
                title: Text(widget.options[index]),
                value: widget.options[index],
                groupValue: selected,
          
                //called on click on this particular tile
                onChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                },
              );
            },
          ),
        )
    
    ],
    );
    
    
  }
}
