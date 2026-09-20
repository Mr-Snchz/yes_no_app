import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  List<Message> messageList = [
    Message(text: 'Hola Amor', fromWho: FromWho.me),
    Message(text: 'vamos a ir a la fiesta?',  fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    final Message message =Message(text: text, fromWho: FromWho.me);
    messageList.add(message);

    notifyListeners();
  }

}