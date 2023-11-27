import 'package:composing/data/chat_item_data.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final ChatItemData data;
  const ChatItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, border: Border.all(color: Colors.red, width: 2), borderRadius: BorderRadius.circular(16)),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/200/300')
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(data.name), Text(data.message)],
            ),
          ),
          Text('hello')
        ],
      ),
    );
  }
}
