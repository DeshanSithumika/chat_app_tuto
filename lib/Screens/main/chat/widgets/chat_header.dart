import 'package:chat_app_tuto/componanets/customtext.dart';
import 'package:flutter/material.dart';

class ChatHeaderWidget extends StatelessWidget {
  const ChatHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF22093b).withOpacity(0.6),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            const CircleAvatar(
                backgroundImage: AssetImage("assets/profile.png")),
            const SizedBox(width: 8),
            CustomText(
              text: "Deshan Sithumika",
              fontWeight: FontWeight.w600,
            ),
          ]),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
