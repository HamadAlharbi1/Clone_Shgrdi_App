import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../contents/constant/Modols.dart';
import 'pay_page.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List ChosenMeals = [];
  @override
  void initState() {
    super.initState();
    listenToRestaurants();
  }

  listenToRestaurants() {
    FirebaseFirestore.instance.collection('cart').snapshots().listen((collection) {
      List<Meal> newList = [];
      for (final doc in collection.docs) {
        final ChosenMeal = Meal.fromMap(doc.data());
        newList.add(ChosenMeal);
      }

      ChosenMeals = newList;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 23, 23),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      // Meal.cart.add(widget.male);
                      for (var meal in ChosenMeals) {
                        FirebaseFirestore.instance.collection('cart').doc(meal.id).delete();
                      }
                    });
                  },
                  child: const Text(
                    'حذف الكل ',
                    style: TextStyle(color: Color.fromARGB(255, 249, 50, 0), fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'عربة التسوق',
                  style: TextStyle(color: Color.fromARGB(255, 121, 121, 121), fontSize: 32),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 151, 151, 151))),
              ],
            ),
          ),
          for (final meal in ChosenMeals)
            Column(
              children: [
                for (var items in Data.W7)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                    ),
                    margin: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                    padding: const EdgeInsets.all(32),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (() {
                                FirebaseFirestore.instance.collection('cart').doc(meal.id).delete();
                                setState(() {
                                  // Meal.cart.add(widget.male);
                                });
                              }),
                              child: const Text(
                                'X',
                                style: TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  meal.name,
                                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                // const Icon(
                                //   Icons.home,
                                //   color: Colors.white,
                                // )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        color: Colors.grey,
                        height: 2,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Color.fromARGB(255, 255, 60, 0),
                                ),
                                Text(
                                  '1 منتج',
                                  style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  'المنتجات',
                                  style: TextStyle(fontSize: 20, color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        color: Colors.grey,
                        height: 2,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color.fromARGB(255, 246, 61, 0),
                                  ),
                                  child: InkWell(
                                    onTap: (() {
                                      Navigator.push(
                                          context, MaterialPageRoute(builder: (context) => const pay_page()));
                                    }),
                                    child: const Text(
                                      'الدفع',
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '${meal.price} ريال ',
                                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        color: Colors.grey,
                        height: 2,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Resturantdetails(value: items)),
                          // );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          child: const Text(
                            'اضف منتج اخر',
                            style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 162, 38, 0)),
                          ),
                        ),
                      ),
                    ]),
                  ),
                // InkWell(
                //   onTap: (() async {
                //     List<Map<String, dynamic>> mealsToSave = [];
                //     for (var meal in ChosenMeals) {
                //       mealsToSave.add(meal.toMap());
                //     }
                //     await FirebaseFirestore.instance.collection('order').add({
                //       'meals': mealsToSave,
                //       'timestamp': Timestamp.now(),
                //     });

                //     for (var meal in ChosenMeals) {
                //       await FirebaseFirestore.instance.collection('cart').doc(meal.id).delete();
                //     }

                //     setState(() {});
                //   }),
                // )

                InkWell(
                  onTap: (() {
                    FirebaseFirestore.instance.collection('order').doc(meal.id).set(meal.toMap());

                    for (var meal in ChosenMeals) {
                      FirebaseFirestore.instance.collection('cart').doc(meal.id).delete();
                    }

                    setState(() {});
                  }),
                  child: const Text(
                    'اضافة الى قائمة الطلبات ',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),

                const SizedBox(
                  height: 12,
                )
              ],
            )
        ],
      ),
    );
  }
}

class Order {
  final List<Meal> meal;

  const Order({
    required this.meal,
  });

  Map<String, dynamic> toMap() {
    return {
      'meals': meal.map((m) => m.toMap()).toList(),
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      meal: (map['meals'] as List).map((e) => Meal.fromMap(e)).toList(),
    );
  }
}
