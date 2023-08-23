import 'package:chat_app_tuto/Screens/main/chat/widgets/chat_bubble.dart';
import 'package:chat_app_tuto/Screens/main/chat/widgets/chat_header.dart';
import 'package:chat_app_tuto/Screens/main/chat/widgets/message_typing_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ChatHeaderWidget(),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      ChatBubble(isSender: index % 2 == 0),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                  itemCount: 20),
            ),
            const MessageTypingWidget(),
          ],
        ),
      ),
    );
  }
}
