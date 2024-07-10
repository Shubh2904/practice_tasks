import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'my_lib.dart';

class Toast extends StatelessWidget {
  const Toast({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          
          child: SizedBox(
            height: 100,
            width: 400,

            child: Column(
            
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
            
            
            
              children: [
            
                ElevatedButton(
                  onPressed: showToast,
                  child: const Text("Show Toast",),
                  ),
            
                Text(compatibilityMsg(), style: const TextStyle(color: Colors.amber),)
            
              ],
            ),
          ),
        
        ),

      ),
    );
  }

  void showToast()
  {
    Fluttertoast.showToast(
      msg: "Hey this is a toast.",
    );
  }

  String compatibilityMsg()
  {
    if(webBuild())
      return "fluttertoast.dart (no build context) doesnt support web.";
    else 
      return "";
  }
}