import 'package:flutter/material.dart';

class GridElement extends StatelessWidget {
  
  // final String rating = "0";
  // final String price = "0";
  // final String name = "NA";
  // final String imgAdr = "assets/1.jpg" ;

  final String rating;
  final String price;
  final String name;
  final String imgAdr;




  GridElement({required this.name, required this.price, required this.rating, required this.imgAdr,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Container(
          height: 100,
          width: 240,
          child: Row(

            //ROW 1

            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Container(
                  color: Colors.red,

                  // padding: const EdgeInsets.all(20),

                  child: Image.asset(
                    imgAdr,
                    width: 50,
                    height: 80,
                    fit: BoxFit.cover,
                  )), //DIVISION 1

              // Image.asset("assets/1.jpg", width: 50, height: 100,),

              Column(
                //DIVISION 2

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(

                    
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(Icons.thumb_up_sharp),
                            Text(rating, style: TextStyle(fontSize: 10),),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(Icons.monetization_on),
                            Text(price, style: TextStyle(fontSize: 10),),
                          ],
                        ),
                      )
                    ],
                  ),
                  
                  
                  
                  
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(name),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
