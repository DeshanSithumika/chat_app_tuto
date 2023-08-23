import 'package:chat_app_tuto/componanets/customtext.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            const CircleAvatar(
                backgroundImage: AssetImage("assets/profile.png")),
            const SizedBox(width: 8),
            CustomText(text: "Deshan Sithumika"),
          ]),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout_outlined,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
