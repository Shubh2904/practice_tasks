import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class SnackbarTest extends StatelessWidget {
  
  const SnackbarTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Toast Example'),
        ),
        body: const Center(
          
          child: SizedBox(
            
            height: 400,
            width: 400,
            
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
              children: [
                ToastButton(),
                SnackButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ToastButton extends StatelessWidget {
  
  const ToastButton({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(
      onPressed: () {
        
        Fluttertoast.showToast(
          msg: "Hello from Toast!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      
      },
      child: const Text('Show Toast'),
    );
  }
}

class SnackButton extends StatelessWidget {
  const SnackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        ElevatedButton(
          onPressed: ()
          {
            final snackBar = 
            SnackBar(
                content: const Text("SNACK!!!"),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);

          }, 
          child: const Text("Snack Button")
        );
      
  }
}

