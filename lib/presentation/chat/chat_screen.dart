
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget{
  
  const ChatScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: CircleAvatar( 
            backgroundImage: NetworkImage( 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJvx-T9DEgVvnZWtjfsOccffDGz9h4B4APW8gqx4XLMA&s=10'),
          ),
        ),
        title: Text('Mi amor'),
        centerTitle: false,),
    );
  }


}