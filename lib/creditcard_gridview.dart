import 'package:flutter/material.dart';
import 'creditcard.dart';
import 'my_lib.dart';

List<dynamic> data =
[
  {
    "cardNo": "7832739282767301",
    "holder": "Alex Mercer",
    "expiry": "03/26"
  },
  
  {
    "cardNo": "8928382082761928",
    "holder": "Jason Bond",
    "expiry": "08/32"
  },
  
  {
    "cardNo": "0928928582769301",
    "holder": "Leon S. Kennedy",
    "expiry": "12/32"
  },
  
  {
    "cardNo": "8645123582767895",
    "holder": "Ada Wong",
    "expiry": "11/23"
  },
  
  {
    "cardNo": "8464632882765647",
    "holder": "Ella Freya",
    "expiry": "03/25"
  },

];




class GridPractice extends StatelessWidget {
  const GridPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: GridView.builder(
          
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.9),
        
        // scrollDirection: Axis.horizontal,
        
        
        // itemCount: 10,
        itemBuilder: (context, index) {
          
        
          
        
          return CreditCard(
          cardNo: data[rInt(min: 0, max: data.length)]["cardNo"],
          holder: data[rInt(min: 0, max: data.length)]["holder"],
          expiry: data[rInt(min: 0, max: data.length)]["expiry"],
          cardColor: rDarkColor(),
        );
            
        
        },
            ));
  }
}
