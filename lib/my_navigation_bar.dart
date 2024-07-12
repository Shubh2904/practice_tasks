import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  
  final List<NavigationDestination> navDestinations;

  final VoidCallback updateCallback;

  const MyNavigationBar({super.key, required this.navDestinations, required this.updateCallback });

  @override
  State<MyNavigationBar> createState() => MyNavigationBarState();
}

class MyNavigationBarState extends State<MyNavigationBar> {
  
  int selectedIndex = 0;

  void _onItemTapped(int index)
  {
    setState(() {
      {
        selectedIndex = index;
           
        widget.updateCallback();
      }

    });

  }


  @override
  Widget build(BuildContext context) {
    
    return NavigationBar(
          
          selectedIndex: selectedIndex,
          
          destinations: widget.navDestinations,

          height: 50,
          
          onDestinationSelected: _onItemTapped,

        );
  }
}