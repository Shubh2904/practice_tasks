import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  
  // final String rating = "0";
  // final String price = "0";
  // final String name = "NA";
  // final String imgAdr = "assets/1.jpg" ;

  
  final String cardNo;
  final String holder;
  final String expiry;
  final Color cardColor;


  //DESIGN LEVERS
  static const Color textColor = Colors.white;


  const CreditCard({required this.cardNo, required this.holder, required this.expiry, required this.cardColor,});


  String formattedCardNo()
  {
    if(cardNo.length < 16)
      return "Invalid Card Number.";
      
    else 
      return "${cardNo.substring(0,4)} ${cardNo.substring(4,8)} XXXX ${cardNo.substring(16-4,16)}";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: SizedBox(
          
          height: 200,
          width: 340,

          child: Card(
          
            elevation: 15,
            color: cardColor,
          
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                //TOP
                const Row( 

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Icon(Icons.wifi, color: textColor),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.only(right: 8.0, top: 8.0),
                      child: Icon(Icons.circle, color: textColor),
                    )
                  ],
                ),
          


                //MIDDLE
                Align(

                  alignment: Alignment.centerLeft,  
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8*6),
                    child: Text(formattedCardNo(), style: const TextStyle(fontSize: 25, color: textColor),),
                  )
                ),
          
          


                //BOTTOM
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                  
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                      
                      //HOLDER
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(children: [
                          const Text("holder", style: const TextStyle(fontSize: 12, color: textColor),),
                          Text(holder, style: const TextStyle(fontSize: 15, color: textColor),),
                        ],),
                      ),


                      //EXPIRY     
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Column(children: [
                          const Text("expiry", style: const TextStyle(fontSize: 12, color: textColor),),
                          Text(expiry, style: const TextStyle(fontSize: 15, color: textColor),),
                        ],),
                      )
                    ],
                  ),
                )
          
              ],),
          ),
        )
      ),
    );
  }
}
