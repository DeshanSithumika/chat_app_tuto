import 'package:chat_app_tuto/widgets/user_card.dart';
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 4),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => const UserCard(),
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
