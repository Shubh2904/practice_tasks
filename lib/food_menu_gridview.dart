import 'package:flutter/material.dart';
import 'food_grid_element.dart';
import 'my_lib.dart';

List<dynamic> data =
[
  {
    "name" : "Cake",
    "rating" : "3.7",
    "price" : "120",
    "imgAdr" : "assets/2.jpg"
  },

  {
    "name" : "Sweets",
    "rating" : "7.7",
    "price" : "350",
    "imgAdr" : "assets/3.jpg"
  },

  {
    "name" : "Pasta",
    "rating" : "3.7",
    "price" : "350",
    "imgAdr" : "assets/4.jpg"
  },

  {
    "name" : "Pastry",
    "rating" : "0.5",
    "price" : "780",
    "imgAdr" : "assets/5.jpg"
  },

  {
    "name" : "Pizza",
    "rating" : "2.3",
    "price" : "190",
    "imgAdr" : "assets/1.jpg"
  },

];




class FoodMenu extends StatelessWidget {
  const FoodMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        
        itemCount: 15,
        
        itemBuilder: (context, index) {

          

          return GridElement(
          imgAdr: data[rInt(min: 0, max: data.length)]["imgAdr"],
          name: data[rInt(min: 0, max: data.length)]["name"],
          price: data[rInt(min: 0, max: data.length)]["price"],
          rating: data[rInt(min: 0, max: data.length)]["rating"],
        );
            

        },
    ));
  }
}
