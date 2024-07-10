import 'package:flutter/material.dart';

class BudgetSlider extends StatefulWidget {
  const BudgetSlider({super.key});

  @override
  State<BudgetSlider> createState() => _BudgetSliderState();
}

class _BudgetSliderState extends State<BudgetSlider> {
  
  RangeValues rangeValues = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 400, 
            width: 400,

            child: Column(
              children: [
                RangeSlider(
                  
                  values: rangeValues, 
                  
                  min: 0,
                  max: 100,
                
                  divisions: 100,
                
                  labels:  RangeLabels(
                    rangeValues.start.round().toString(), 
                    rangeValues.end.round().toString()),
                
                  onChanged: (RangeValues values)
                  {
                    setState(() {
                      rangeValues = values;
                    });
                  }, 
                ),
                Text("Budget: Rs ${rangeValues.start.round().toString()} - Rs ${rangeValues.end.round().toString()}"),
              ],
            )
            
            
            ),

        )
      )
    );
  }
}