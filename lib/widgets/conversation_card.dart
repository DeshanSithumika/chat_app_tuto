import 'package:chat_app_tuto/Screens/main/chat/chat.dart';
import 'package:chat_app_tuto/componanets/customtext.dart';
import 'package:chat_app_tuto/utils/util_functions.dart';
import 'package:flutter/material.dart';

class ConversationCard extends StatelessWidget {
  const ConversationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => UtilFunctions.navigateTo(context, const ChatScreen()),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 2,
              color: Colors.black26,
            ),
          ],
          color: Color(0xFF1d2126),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.png")),
                const SizedBox(width: 16),
                Column(
                  children: [
                    CustomText(
                      text: "Sakitha Mendis",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "How are you ?",
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
            CustomText(
              text: "1 min ago",
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
