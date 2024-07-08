import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
        body: Row(
          
          
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
          Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [

            Container(
                height: 20,
                width: 200,
                color: Colors.amber,
                child: const Text(
                  "Patties",
                  textAlign: TextAlign.center,
                )),

            Container(
                // height: 20,
                width: 200,
                color: Colors.amber,
                child: const Text(
                  "This is a delicous patties that is very crunchy.This is a delicous patties that is very crunchy.This is a delicous patties that is very crunchy.This is a delicous patties that is very crunchy.This is a delicous patties that is very crunchy.",
                  textAlign: TextAlign.center,
                )),

            // const Text(
            //       "This is a delicous patties that is very crunchy.",
            //       textAlign: TextAlign.center,
            //     ),
            // const Center(
            // child:
            // )

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star)
                  ],
                ),
                Text("178 Reviews")
              ],
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Column(
                  children: [Icon(Icons.thumb_up_sharp), Text("Likes: 24")],
                ),
                Column(
                  children: [
                    Icon(Icons.food_bank_outlined),
                    Text("Walk In: 12")
                  ],
                ),
                Column(
                  children: [Icon(Icons.card_giftcard), Text("Orders: 24")],
                )
              ],
            )
          ],

        ),
        
        Container(child: Image.asset("1.jpg"),)

          
        ],)
        
        ));
  }
}
