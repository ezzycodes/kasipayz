import 'package:flutter/material.dart';
import 'package:kasipayz/screens/auth_page.dart';
//import 'package:kasipayz/screens/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFF004aad),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(child: _topImageSection()),
          _spashButton(context),
        ],
      ),
    ));
  }
}

Widget _topImageSection() {
  return Container(
    child: Center(child: Image.asset("assets/images/background.png")),
  );
}

Widget _spashButton(context) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            side: BorderSide(
              width: 2.0,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  AuthPage()),
            );
          },
          child: const Icon(Icons.arrow_forward),
        ),
      ],
    ),
  );
}
