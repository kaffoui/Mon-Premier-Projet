import 'package:firebase_core/firebase_core.dart'; // new
import 'package:firebase_auth/firebase_auth.dart'; // new
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'outils/telephone.dart';
import 'pages/components/calculatrice.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(Root());
}
class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'phone auth',
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.blue,
        visualDensity:VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}





