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
            height: 300,
            width: 400,

            child: Column(
            
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
            
            
            
              children: [
            
                ElevatedButton(
                  onPressed: ()
                  {
                    if(webBuild())
                      showSnackbarUsing(context: context, snackMsg: "Toast Substitute");
                    else 
                      return showToast();
                  },
                  child: const Text("Show Toast",),
                  ),
            
                Text(compatibilityMsg(), style: const TextStyle(color: Colors.amber),),
            

                ElevatedButton(
                  onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('Yay! A SnackBar!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );

                  // Find the ScaffoldMessenger in the widget tree
                  // and use it to show a SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
          

                  child: const Text("Show Snackbar",),
                  ),
            
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

  void showSnackbarUsing({required BuildContext context, required String snackMsg})
  {
     final snackBar = SnackBar(
        content: Text(snackMsg),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            // Some code to undo the change.
          },
        ));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

  }

  String compatibilityMsg()
  {
    if(webBuild())
      return "fluttertoast.dart (no build context) doesnt support web.\nA snackbar will be shown instead.";
    else 
      return "";
  }
}