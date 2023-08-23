import 'package:chat_app_tuto/widgets/conversation_card.dart';
import 'package:chat_app_tuto/widgets/header.dart';
import 'package:flutter/material.dart';

class Conversation extends StatefulWidget {
  const Conversation({super.key});

  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const HeaderWidget(),
          const SizedBox(height: 4),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => const ConversationCard(),
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
