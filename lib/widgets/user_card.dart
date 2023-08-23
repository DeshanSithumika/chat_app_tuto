import 'package:chat_app_tuto/Screens/main/chat/chat.dart';
import 'package:chat_app_tuto/componanets/customtext.dart';
import 'package:chat_app_tuto/utils/util_functions.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        text: "Sakitha Mendis",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      const Icon(
                        Icons.circle,
                        size: 10,
                        color: Colors.green,
                      )
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
            ],
          ),
          ElevatedButton(
            onPressed: () {
              UtilFunctions.navigateTo(context, const ChatScreen());
            },
            child: CustomText(text: "Chat"),
          )
        ],
      ),
    );
  }
}
