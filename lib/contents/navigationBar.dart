import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../pages/HomePage.dart';
import '../pages/Orders.dart';
import '../pages/Profile.dart';
import 'constant/Modols.dart';

class navigationBar extends StatefulWidget {
  const navigationBar({super.key});

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  var currentIndex = 0;
  static const MyIconcolor = Colors.white38;

  @override
  void initState() {
    for (final res in Data_Resturants1.resturant_W4) {
      final restaurantCollection = FirebaseFirestore.instance.collection('restaurant');
      final resDoc = restaurantCollection.doc(res.id);
      resDoc.set(res.toMap());
    }

    for (final res in Meals.all_males) {
      final restaurantCollection = FirebaseFirestore.instance.collection('all_males');
      final resDoc = restaurantCollection.doc(res.id);
      resDoc.set(res.toMap());
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget body;
    var pages = [
      const HomePage(),
      const Profile(),
      const Orders(),
      const Orders(),
    ];

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسيه'),
          BottomNavigationBarItem(icon: Icon(Icons.man_sharp), label: 'صفحتك'),
          BottomNavigationBarItem(icon: Icon(Icons.headphones), label: 'العروض'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'طلباتي'),
        ],
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 31, 31, 31),
        selectedItemColor: const Color.fromARGB(255, 253, 158, 6),
        selectedFontSize: 10,
        unselectedItemColor: const Color.fromARGB(255, 230, 233, 236),
      ),
    );
  }
}
