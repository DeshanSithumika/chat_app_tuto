import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';

class MessageTypingWidget extends StatelessWidget {
  const MessageTypingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBar(
      onSend: (_) => print(_),
      // actions: [
      //   InkWell(
      //     child: const Icon(
      //       Icons.add,
      //       color: Colors.black,
      //       size: 24,
      //     ),
      //     onTap: () {},
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.only(left: 8, right: 8),
      //     child: InkWell(
      //       child: const Icon(
      //         Icons.camera_alt,
      //         color: Color(0xFF6209d9),
      //         size: 24,
      //       ),
      //       onTap: () {},
      //     ),
      //   ),
      // ],
      messageBarHitText: "Type your message here",
      messageBarHintStyle: const TextStyle(color: Colors.black38),
      sendButtonColor: const Color(0xFF02035e),
      messageBarColor: const Color(0xFF838087),
    );
  }
}
