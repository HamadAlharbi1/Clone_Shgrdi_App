import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'contents/constant/Modols.dart';
import 'pages/Login.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();

    for (final res in Data_Resturants1.resturant_W4) {
      final restaurantCollection = FirebaseFirestore.instance.collection('restaurant');
      final resDoc = restaurantCollection.doc(res.id);
      resDoc.set(res.toMap());
    }

    for (final res in Meals.all_males) {
      final malesCollection = FirebaseFirestore.instance.collection('all_males');
      final resDoc = malesCollection.doc(res.id);
      resDoc.set(res.toMap());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Login(), debugShowCheckedModeBanner: false);
  }
}
