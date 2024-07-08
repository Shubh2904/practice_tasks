import 'package:assignment/my_lib.dart';
import 'package:flutter/material.dart';
import 'text_with_icon.dart';

class MyAppTest extends StatelessWidget {
  const MyAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
                  color: Color.fromARGB(255, 132, 50, 255),
                  height: 400*0.1,
                  width: 380,
                  
                  child: 

                  Row(
                          children: [
                            Expanded(child: TextWithIcon(title: lorem(), description: lorem(),)),
                            const Expanded(child: TextWithIcon(title: "13", description: "Correct")),
                          ],
                        ),
                    // const Column(
                      
                    //   children: [
                    //     Row(
                    //       children: [
                    //         TextWithIcon(title: "100%", description: "Completion",),
                    //         TextWithIcon(title: "13", description: "Correct"),
                    //       ],
                    //     ),

                    //     // Row(
                    //     //   children: [
                    //     //     TextWithIcon(title: "100%", description: "Completion",),
                    //     //     TextWithIcon(title: "13", description: "Correct"),
                    //     //   ],
                    //     // )
                    //   ],
                      
                    // ),
                  
                  
                  
                ),
      
      ),
    
    );
  }
}