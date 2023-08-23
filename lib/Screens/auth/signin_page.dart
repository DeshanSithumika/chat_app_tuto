import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              scale: 5,
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                //navigate to chat screen
              },
              child: Container(
                width: 250,
                height: 60,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/google.jpeg"),
                    ),
                    SizedBox(width: 30),
                    Text("SignIn with Google")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
