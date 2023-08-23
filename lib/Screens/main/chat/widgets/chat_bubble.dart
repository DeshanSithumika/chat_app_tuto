import 'package:chat_app_tuto/componanets/customtext.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key, this.isSender = true});

  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        BubbleSpecialThree(
          text: 'Hi how are you?',
          color: isSender ? const Color(0xFF1B97F3) : Colors.grey.shade700,
          tail: true,
          textStyle: const TextStyle(color: Colors.white, fontSize: 15),
          isSender: isSender,
          // delivered: true,
          // seen: true,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 22, left: 22),
          child: CustomText(
            text: "1 min ago",
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
