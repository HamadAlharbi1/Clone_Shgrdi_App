import 'package:flutter/material.dart';

import '../contents/constant/Modols.dart';
import 'pay.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
                      Meal.cart.clear();
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
              ],
            ),
          ),
          for (var meal in Meal.cart)
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
                            const Text(
                              'X',
                              style: TextStyle(fontSize: 20, color: Colors.grey),
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
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pay(male: meal)));
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
                  )
              ],
            )
        ],
      ),
    );
  }
}
