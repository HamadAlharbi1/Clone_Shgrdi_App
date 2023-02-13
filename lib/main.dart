import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'App.dart';
import 'firebase_options.dart';
import 'pages/HomePage.dart';
import 'pages/Login.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App());
}

Widget buildFirstWidget() {
  final User? firebaseUser = FirebaseAuth.instance.currentUser;

  if (firebaseUser == null) {
    return const Login();
  } else {
    return const HomePage();
  }
}
