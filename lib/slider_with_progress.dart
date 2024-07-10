import 'package:flutter/material.dart';

class SliderProgress extends StatefulWidget {
  const SliderProgress({super.key});

  @override
  State<SliderProgress> createState() => _SliderProgressState();
}

class _SliderProgressState extends State<SliderProgress> {
  
  double progressValue = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
          
            height: 400,
            width: 400,
          
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: [
                
                LinearProgressIndicator(value: progressValue,),
                
                Slider(
                  
                  value: progressValue, 
                  
                  min: 0.0,
                  max: 1.0,
            
                  onChanged: (double value) {
                  setState(() {
                    progressValue = value;
                  });
                  }
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}