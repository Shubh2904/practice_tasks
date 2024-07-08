import 'text_with_icon.dart';
import 'package:flutter/material.dart';

class CardStack extends StatelessWidget {
  const CardStack({super.key});

  static const double circleSize = 120;

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Scaffold(
        
        body: Stack(
          alignment: Alignment.center,

          children: [

          //CARD 1
          SizedBox(height: 400, width: 400, child: 
            Card(
              color: Color.fromARGB(255, 136, 79, 206),
              child: 
              
              Stack(children: [
                
                //MAIN CIRCLE
                Center(child: Icon(Icons.circle, size: circleSize, color: Colors.white,)), 
                Center(child: Icon(Icons.circle, size: circleSize*1.2, color: Colors.white24,)), 
                Center(child: Icon(Icons.circle, size: circleSize*1.7, color: Colors.white24,)),
                
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Center(child: Text("score", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 136, 79, 206)),),),
                ),
                
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Center(child: Text("150pt", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 136, 79, 206)),)),
                ),


                //BACK BUTTON
                Align(
                  alignment: Alignment.topLeft,
                  child: 
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: IconButton(onPressed: null, icon: Icon(Icons.arrow_back_outlined,color: Colors.white, size: 20,)),
                  )
                  
                ),

              ],),
      
                          
            ),
          ),
        

          // CARD 2
          Padding(
            padding: EdgeInsets.only(top: 380, left: 100, right: 100),
            
            child: SizedBox(height: 400*0.4, width: 380, child: 
              
              Card(
                color: Colors.white,
                elevation: 3,  

                //TEXT WITHIN CARD
                child: 
                
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 60),
                  child: Row(children: [
                    
                    Expanded(
                      child: Column(
                        
                        children: [
                          Expanded(child: TextWithIcon(title: "100%", description: "Completion", color: Color.fromARGB(255, 136, 79, 206),)),
                          Expanded(child: TextWithIcon(title: "13", description: "Correct", color: Color.fromARGB(255, 79, 206, 109),)),
                        ],
                        
                      ),
                    ),
                  
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(child: TextWithIcon(title: "20", description: "Total Question", color: Color.fromARGB(255, 136, 79, 206),)),
                          Expanded(child: TextWithIcon(title: "07", description: "Incorrect", color: Color.fromARGB(255, 206, 79, 79),)),
                        ],
                      ),
                    )
                  ],),
                ),
              ),
              
            ),
          ),



        ],)

        ),
        );

    
  }
}
