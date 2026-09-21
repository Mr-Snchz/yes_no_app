
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
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

    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Column( 
        children: [


          Expanded(child: ListView.builder(
              controller:  chatProvider.chatController,
              padding: EdgeInsets.all(20),
              itemCount: chatProvider.messageList.length,
              itemBuilder: ((context, index) {
                
                final message = chatProvider.messageList[index];
                
                return ( message.fromWho == FromWho.hers)
                ? HerMessageBubble(message: message,)  
                : MyMessageBubble(message: message);
              
              }))),

          MessageFieldBox(
            onValue: chatProvider.sendMessage,
          )
        
        ],
      )
    );
  }
}