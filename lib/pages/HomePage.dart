import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:wassel_app/contents/constant/Modols.dart';
import 'package:wassel_app/pages/resturantdetails.dart';

import '../contents/constant/constants.dart';
import 'cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Restuarant> restaurants = [];
  @override
  void initState() {
    super.initState();
    listenToRestaurants();
  }

  listenToRestaurants() {
    FirebaseFirestore.instance.collection('restaurant').snapshots().listen((collection) {
      List<Restuarant> newList = [];
      for (final doc in collection.docs) {
        final restaurant = Restuarant.fromMap(doc.data());
        newList.add(restaurant);
      }

      restaurants = newList;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 23, 23),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Container(
                height: 16,
                color: Colors.amber,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.notifications_active,
                                    color: Color.fromARGB(255, 98, 98, 98),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Cart()),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Color.fromARGB(255, 98, 98, 98),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'نوصل لك المكان الحالي',
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'من وين ودك تطلب ؟ ',
                          style: TextStyle(
                              color: Constant.fontcolor, fontSize: Constant.fontsize20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Icon(
                          Icons.search,
                          color: Constant.fontcolor,
                          size: 32,
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 82,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              for (var homepagenavigator in Data.W2)
                                Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            color: Colors.green,
                                            child: Image.network(
                                              homepagenavigator.image,
                                              height: 80,
                                              width: 80,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                          bottom: 8,
                                          left: 20,
                                          child: Container(
                                            color: Colors.green,
                                            child: Text(
                                              homepagenavigator.name,
                                              style: const TextStyle(color: Colors.white),
                                            ),
                                          ))
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black),
                          child: ListView(scrollDirection: Axis.horizontal, children: [
                            for (var Horizentalnavigator in Data.W3)
                              Container(
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      Horizentalnavigator.name,
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                    Container(
                                        clipBehavior: Clip.hardEdge,
                                        decoration:
                                            BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black),
                                        child: SizedBox(
                                          width: 25,
                                          height: 25,
                                          child: Image.network(
                                            Horizentalnavigator.image,
                                          ),
                                        )),
                                    const SizedBox(
                                      width: 12,
                                    )
                                  ],
                                ),
                              )
                          ]),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black),
                          child: const Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.all(12),
                      height: 200,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black),
                      child: Image.network(
                        'https://k.top4top.io/p_2593ioulr0.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          width: 180,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'استلمها بنفسك',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Icon(
                                Icons.bike_scooter,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 253, 0, 0),
                          ),
                          width: 180,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'توصيل',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Icon(
                                Icons.bike_scooter,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: const Icon(
                            Icons.home,
                            size: 32,
                            color: Color.fromARGB(255, 110, 110, 110),
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              '    88 متجر',
                              style: TextStyle(color: Color.fromARGB(255, 81, 81, 81)),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'المتاجر',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    for (var i in restaurants) // resturnsts
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Resturantdetails(
                                      value: i,
                                    )),
                          );
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 250,
                              child: Image.network(i.image),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(i.rating, style: const TextStyle(color: Colors.white)),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 255, 230, 0),
                                ),
                                Text(i.name, style: const TextStyle(color: Colors.white)),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            // Container(
                            //   alignment: Alignment.centerRight,
                            //   child: const Text('عروض حصرية', style: TextStyle(color: Colors.white)),
                            // ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: const [
                                    Text('التتبع من خلالنا ', style: TextStyle(color: Colors.white)),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Icon(
                                      Icons.bike_scooter,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        const Text('كيلومتر', style: TextStyle(color: Colors.white)),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(i.distance, style: const TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    const Icon(
                                      Icons.bike_scooter,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('ريال', style: TextStyle(color: Colors.white)),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(i.tracking, style: const TextStyle(color: Colors.white)),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    const Icon(
                                      Icons.bike_scooter,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: const Color.fromARGB(255, 215, 213, 213)),
                                  child: const Text('توصيل', style: TextStyle(color: Color.fromARGB(255, 26, 26, 26))),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                // Container(
                                //   padding: const EdgeInsets.all(8),
                                //   clipBehavior: Clip.hardEdge,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(12),
                                //       color: const Color.fromARGB(255, 215, 213, 213)),
                                //   child: const Text(' ر7.0 ريال توصيل  (حد ادنى 35 ريال )',
                                //       style: TextStyle(color: Color.fromARGB(255, 26, 26, 26))),
                                // ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
