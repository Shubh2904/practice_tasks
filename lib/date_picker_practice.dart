import 'package:flutter/material.dart';

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({super.key});

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  
  DateTime selectedDate = DateTime.now(); 
  
  String? dateString;

  Future<void> _selectDate(BuildContext context) async
  {
    final DateTime? pickedDate = await showDatePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime(2030));
  
    if(pickedDate != null)
      selectedDate = pickedDate;
    else 
      selectedDate = DateTime.now();

    _setDateString();
    
  }

  void _setDateString()
  {
    setState(() {
      
      if(selectedDate == null)
      {
        dateString = 'Select a date below';
      }
      else 
      {
        dateString = "${selectedDate.day.toString()}/${selectedDate.month.toString()}/${selectedDate.year.toString()}";
      }
    });
  }
  
  @override
  void initState() {
    
    _setDateString();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Center(
          child: SizedBox(

            height: 200,
            width: 200,

            child: Column(
            
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAx
              // isAlignment.center,
            
              children: [
                Text("Selected Date: $dateString"),
                
                ElevatedButton(
                  
                  onPressed: () => _selectDate(context),
            
                  child: const Text("Select Date"))
              ],
            ),
          ),
        ),
        ),
    );
  }
}