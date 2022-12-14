import 'package:composing/chat_item.dart';
import 'package:composing/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class ChatData {
  final String name;
  final String lastChat;
  final String lastSeen;

  ChatData({
    required this.name,
    required this.lastChat,
    required this.lastSeen,
  });
}


class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  final data = [
    ChatData(
      name: 'Tony Stark',
      lastSeen: '2 days ago',
      lastChat: 'okee'
    ),
    ChatData(
        name: 'Steve Rogers',
        lastSeen: '2 hours ago',
        lastChat: 'otw'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('latihan composing'),
      // ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final chat = data[index];
          return ChatItem(
            chatData: chat,
          );
        },
      ),
    );
  }
}