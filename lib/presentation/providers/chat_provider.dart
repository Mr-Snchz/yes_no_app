import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_aswer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatController = ScrollController();
  final GetYesNoAswer getYesNoAswer = GetYesNoAswer();

  List<Message> messageList = [
    Message(text: 'Hola Amor', fromWho: FromWho.me),
    Message(text: 'vamos a ir a la fiesta?',  fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    if(text.isEmpty) return; 

    if(text.endsWith('?')){
      herReply();
    }

    final Message message =Message(text: text, fromWho: FromWho.me);
    messageList.add(message);

    notifyListeners();
    moveScrollToBotom();
  }


  Future<void> herReply () async {
    final herMessageResponse = getYesNoAswer.getAnswer();
  }
  


  Future<void> moveScrollToBotom  () async {
    await Future.delayed(const Duration(milliseconds: 100));

      chatController.animateTo(
      chatController.position.maxScrollExtent,
      duration: Duration(milliseconds: 200), 
      curve: Curves.easeOut,
    );
  }
  
}