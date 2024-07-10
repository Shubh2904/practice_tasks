import 'package:flutter/material.dart';
import 'my_radio.dart';


class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: Center(
          child: Container(
            height: 600,
            width: 400,
            color: Colors.indigo,
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
              children: [
                

                //EMAIL

                TextFormField(
                  decoration: const InputDecoration
                  (
                    prefixIcon: Icon(Icons.abc, color: Colors.white,),
                    labelText: "Email",
                    hintText: "What is your primary email?",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                    hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                    
              
                  ),
                    
                ),
          
                
                //PHONE
                
                TextFormField(
                  decoration: const InputDecoration
                  (
                    prefixIcon: Icon(Icons.abc, color: Colors.white,),
                    labelText: "Phone",
                    hintText: "What is your phone number?",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                    hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                    
                ),
          

                //RADIO SELECTION

                const Expanded(child: RadioExample(heading: "Choose meal preference...", options: ["Lunch", "Dinner", "Dessert"],)),

                //CHECKBOX
                ListTile(
                  leading: Checkbox(value: true, onChanged: (bool? value) {value = false;}),
                  title: const Text("I have read all the terms and conditions."),
                ),
                

                

                //COMPANY NAME

                const Align(
                  alignment: Alignment.bottomCenter, 
                  child: Text("Company Name", style: TextStyle(color: Colors.white),)
                )
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
