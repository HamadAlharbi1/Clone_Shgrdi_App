import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../contents/constant/Modols.dart';
import 'cart.dart';

class MealPage extends StatefulWidget {
  final Meal male;
  const MealPage({
    super.key,
    required this.male,
  });

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 23, 23),
      body: ListView(
        children: [
          Image.network(
            widget.male.image,
            height: 250,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.male.name,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 2,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'قد تتغير السعرات الحرارية بناء على الاضافات',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                '370.0',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'اختار الحجم',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        const Text(
                          ' ريال',
                          style: TextStyle(color: Color.fromARGB(255, 121, 121, 121)),
                        ),
                        Text(
                          widget.male.price,
                          style: const TextStyle(color: Color.fromARGB(255, 121, 121, 121)),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      '0.0 سعر حراري',
                      style: TextStyle(color: Color.fromARGB(255, 121, 121, 121)),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'عادي',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Stack(
                      children: const [
                        Icon(
                          Icons.circle_outlined,
                          color: Color.fromARGB(255, 239, 76, 0),
                        ),
                        Positioned.fill(
                            child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.circle_sharp,
                            size: 12,
                            color: Color.fromARGB(255, 239, 76, 0),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'ملاحظات',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            height: 100,
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: const [
                    Text(
                      'اكتب طلبك الخاص',
                      style: TextStyle(color: Color.fromARGB(255, 121, 121, 121)),
                    ),
                    SizedBox(width: 300, child: TextField())
                  ],
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 151, 151, 151))),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: InkWell(
              onTap: (() {
                setState(() {
                  // Meal.cart.add(widget.male);
                  // FirebaseFirestore.instance.collection('cart').add(widget.male.toMap());
                  FirebaseFirestore.instance.collection('cart').doc(widget.male.id).set(widget.male.toMap());
                });
              }),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: const Color.fromARGB(255, 224, 56, 0)),
                child: const Text(
                  'اضافة',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cart()),
                );
              }),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: const Color.fromARGB(255, 224, 56, 0)),
                child: const Text(
                  'الانتقال الى السلة ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 300,
          )
        ],
      ),
    );
  }
}
