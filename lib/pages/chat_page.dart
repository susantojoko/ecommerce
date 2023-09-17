import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
 
  final List<String> messages = [];
  final TextEditingController messageController = TextEditingController();

  void _handleMessageSubmit(String text) {
    setState(() {
      messages.add(text);
      messageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    final text = messageController.text.trim();
                    if (text.isNotEmpty) {
                      _handleMessageSubmit(text);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
