import 'package:flutter/material.dart';

class TextWithIcon extends StatelessWidget {
  
  final String title;
  final String description;
  final Color color;
  final IconData icon;

  const TextWithIcon({required this.title, this.description = "", this.color = Colors.black, this.icon = Icons.circle, });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        
        body: Row(
          
          children: [
            
            //ICON
        
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, right : 5),
                child: Icon(icon, color: color, size: 8,),
              )
            ),
        
        
            //TEXT
            Column(
              children: [
                SizedBox(
                  height: 20,
                  width: 100,
                  child: Text(title, style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 15),)
                ),
                
                
                SizedBox(
                  height: 20,
                  width: 100,
                  child: Text(description, style: const TextStyle(color: Color.fromARGB(255, 156, 156, 156), fontSize: 11, fontWeight: FontWeight.bold))
                )
              ],
            )
        
          ],
        ),
      ),
    );
  }

}