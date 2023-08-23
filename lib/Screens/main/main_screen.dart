import 'package:chat_app_tuto/Screens/main/conversations/converstation.dart';
import 'package:chat_app_tuto/Screens/main/users/users.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final int _currentIndex = 0;

  //-------list to store bottom navigation screen
  final List<Widget> _screen = const [
    Conversation(),
    Users(),
  ];

  //-----store the active index
  int activeIndex = 0;

  //--ontap function
  void onItemTapped(int i) {
    setState(() {
      activeIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[activeIndex],
      bottomNavigationBar: BottomAppBar(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: () => onItemTapped(0),
                child: Icon(
                  Icons.message,
                  color:
                      activeIndex == 0 ? Colors.deepOrangeAccent : Colors.white,
                )),
            InkWell(
                onTap: () => onItemTapped(1),
                child: Icon(
                  Icons.people,
                  color:
                      activeIndex == 1 ? Colors.deepOrangeAccent : Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
