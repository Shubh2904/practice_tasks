import 'package:flutter/material.dart';

class RangeSlider extends StatefulWidget {
  const RangeSlider({super.key});

  @override
  State<RangeSlider> createState() => _RangeSliderState();
}

class _RangeSliderState extends State<RangeSlider> {
  
  RangeValues rangeValues = const RangeValues(10000, 20000);
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 400, 
            width: 400,
            child: 
            
            RangeSlider(
            values: rangeValues,
            min: 0,
            max: 100,
            divisions: 10,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
            ),

        )
      )
    );
  }
}