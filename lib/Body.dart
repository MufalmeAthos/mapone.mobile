import 'package:flutter/material.dart';

 class Body extends StatelessWidget {
   const Body({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return SingleChildScrollView(
       child: Container(
         child: Column(
           children: [
             Text("Here is the new page"),

           ],
         ),

       ),
     );
   }
 }
