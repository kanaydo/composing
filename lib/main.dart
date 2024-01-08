import 'package:composing/data/chat_item_data.dart';
import 'package:composing/login_page.dart';
import 'package:flutter/material.dart';
import 'chat_item.dart';

// HELLO FROM HERE

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PageOne(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({super.key, required this.title});

  final chatItems = [
    ChatItemData(name: 'Steve Rogers', message: 'hello'),
    ChatItemData(name: 'Natasha Romanav', message: 'p'),
    ChatItemData(name: 'Bucky Barnes', message: 'dah makan?'),
    ChatItemData(name: 'Wanda Maximov', message: 'pinjam dulu 100'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Whatsapp'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: chatItems.length,
          itemBuilder: (context, index) {
            final data = chatItems.elementAt(index);
            return ChatItem(data: data);
          },
        ));
  }
}
