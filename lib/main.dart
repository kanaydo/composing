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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({super.key, required this.title});

  final chatItems = [
    ChatItem(
      data: 1,
    ),
    ChatItem(
      data: 2,
    ),
    ChatItem(
      data: 3,
    ),
    ChatItem(
      data: 4,
    ),
    ChatItem(
      data: 5,
    ),
    ChatItem(
      data: 6,
    ),
    ChatItem(
      data: 7,
    ),
    ChatItem(
      data: 8,
    ),
    ChatItem(
      data: 9,
    ),
    ChatItem(
      data: 10,
    ),
    ChatItem(
      data: 11,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Whatsapp'),
          centerTitle: true,
        ),
        body: ListView(
          children: chatItems,
        ));
  }
}
