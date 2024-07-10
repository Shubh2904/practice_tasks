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
          child: ToastButton(),
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
