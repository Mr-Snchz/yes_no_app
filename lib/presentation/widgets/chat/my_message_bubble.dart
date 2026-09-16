

import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget{
   const MyMessageBubble({super.key});

  

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column( 
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
            child: Text('My message Bubble is an oration', style: TextStyle( color: Colors.white)),
          )
        ),
        const SizedBox(height: 10)
    ],);
  }

}