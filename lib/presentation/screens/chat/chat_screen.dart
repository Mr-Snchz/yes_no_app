
import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

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
        centerTitle: false,
        ),
        body: _ChatView(),
    );
  }


}

class _ChatView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column( 
        children: [


          Expanded(child: ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: 100,
              itemBuilder: ((context, index) {
              
                return ( index %2 == 0)
                ? HerMessageBubble()  
                : MyMessageBubble();
              
              }))),

          MessageFieldBox()
        
        ],
      )
    );
  }
}