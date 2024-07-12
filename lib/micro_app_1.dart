
import 'package:flutter/material.dart';

import 'my_navigation_bar.dart';
import 'creditcard_gridview.dart';
import 'food_menu_gridview.dart';
import 'date_picker_practice.dart';

class MicroApp1 extends StatefulWidget {
  
  const MicroApp1({super.key});

  @override
  State<MicroApp1> createState() => _MicroApp1State();
}

class _MicroApp1State extends State<MicroApp1> {
  final GlobalKey<MyNavigationBarState> navBarKey = GlobalKey<MyNavigationBarState>();   

  final List<NavigationDestination> navDestinations = const [
    NavigationDestination(icon: Icon(Icons.credit_card), label: "Cards"),
    NavigationDestination(icon: Icon(Icons.dinner_dining), label: "Food Menu"),
    NavigationDestination(icon: Icon(Icons.calendar_month), label: "Date"),
  ];

  final List<Widget> widgetOptions = const [
    GridPractice(),
    FoodMenu(),
    DatePickerPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        bottomNavigationBar: MyNavigationBar(navDestinations: navDestinations, key: navBarKey, updateCallback: rebuild,),
        
        body: widgetOptions[navBarKey.currentState?.selectedIndex ?? 0],
        
        ),
    );
  }

  void rebuild()
  {
    setState(() {
      
    });
  }

}