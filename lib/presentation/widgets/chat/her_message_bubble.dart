

import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget{
   const HerMessageBubble({super.key});

  

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
            child: Text('Her Message Bubble', style: TextStyle( color: Colors.white)),
          )
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10)
    ],);
  }

}

class _ImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20),
      child:
      Image.network('https://yesno.wtf/assets/no/2-101be1e3d8a0ed407c4e3c001ef8fa66.gif',
      width: size.width * 0.7,
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if(loadingProgress == null) return child;
        
        return Container(
          width: size.width * 0.7,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 5 ),
          child: const Text('Esta mandando un mensaje '),
        );
      },
      ) 
      );
  }
}