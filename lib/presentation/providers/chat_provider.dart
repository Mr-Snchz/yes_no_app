import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  List<Message> message = [
    Message(text: 'Hola Amor', fromWho: FromWho.me),
    Message(text: 'vamos a ir a la fiesta?',  fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    // Implementar mensaje 
  }
  
}