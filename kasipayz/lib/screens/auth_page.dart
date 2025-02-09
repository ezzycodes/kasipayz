import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kasipayz/screens/dashboard.dart';
import 'package:kasipayz/screens/login.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //is user loogged in
            if (snapshot.hasData) {
              return HomePage();
            }

            //is user not logged in
            else {
              return LoginPage();
            }
          }),
    );
  }
}
