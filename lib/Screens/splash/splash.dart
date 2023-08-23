import 'package:chat_app_tuto/Screens/auth/signin_page.dart';
import 'package:chat_app_tuto/utils/util_functions.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        UtilFunctions.navigateTo(context, const SignInPage());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              scale: 3,
            ),
            const SizedBox(height: 20),
            Text(
              "Chit Chat",
              style: TextStyle(
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[300]),
            )
          ],
        ),
      ),
    );
  }
}
