import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:kasipayz/screens/splashscreen.dart'; // Importing the Material package.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const KasiPay());
}

// Root widget for the app.
class KasiPay extends StatelessWidget {
  const KasiPay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kasi Pay',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Splashscreen(), // Initial screen.
    );
  }
}
