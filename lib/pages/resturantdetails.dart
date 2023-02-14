import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../contents/constant/Modols.dart';
import 'MealPage.dart';

class Resturantdetails extends StatefulWidget {
  final Restuarant value; // object

  const Resturantdetails({
    super.key,
    required this.value,
  });

  @override
  State<Resturantdetails> createState() => _ResturantdetailsState();
}

class _ResturantdetailsState extends State<Resturantdetails> {
  StreamSubscription? listener;
  List<Meal> meals = [];
  @override
  void initState() {
    super.initState();
    listener?.cancel();
    listenToRestaurants();
  }

  listenToRestaurants() {
    listener ??= FirebaseFirestore.instance
        .collection('all_males')
        .where("resturant_id", isEqualTo: widget.value.id)
        .snapshots()
        .listen((collection) {
      List<Meal> newList = [];
      for (final doc in collection.docs) {
        final meal = Meal.fromMap(doc.data());
        newList.add(meal);
      }

      meals = newList;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 23, 23),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Image.network(widget.value.image),
          const SizedBox(
            height: 12,
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 151, 151, 151))),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.white)),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.value.open,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 115, 4), fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color.fromARGB(255, 238, 119, 0))),
                      child: Text(
                        widget.value.open,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 238, 119, 0), fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      widget.value.address,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 230, 230, 230), fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                color: const Color.fromARGB(255, 37, 37, 37),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'توصيل',
                          style: TextStyle(
                              color: Color.fromARGB(255, 238, 119, 0), fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.bike_scooter, color: Color.fromARGB(255, 238, 119, 0)),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'طريقة الاستلام',
                      style: TextStyle(
                          color: Color.fromARGB(255, 230, 230, 230), fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        'تتبع طلبك',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: const [
                          Text('شقردي ', style: TextStyle(color: Color.fromARGB(255, 252, 80, 0))),
                          Text('التوصيل بواسطة ', style: TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                  const Text('|', style: TextStyle(color: Colors.grey, fontSize: 50)),
                  Column(
                    children: [
                      const Text(
                        'وقت التوصيل',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          const Text('دقيقة', style: TextStyle(color: Colors.white)),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(widget.value.waitingperiod, style: const TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                  const Text('|', style: TextStyle(color: Colors.grey, fontSize: 50)),
                  Column(
                    children: [
                      const Text(
                        'سعر التوصيل',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          const Text('ريال', style: TextStyle(color: Colors.white)),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(widget.value.trackingprice, style: const TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ]),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 36, 36, 36),
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          'ريال توصيل حد ادنى ${widget.value.minorderprice} ريال',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255), fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.value.trackingprice,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255), fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Icon(
                      Icons.card_giftcard,
                      color: Color.fromARGB(255, 0, 141, 0),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 251, 94, 94),
                ),
                child: const Icon(
                  Icons.card_giftcard,
                  color: Color.fromARGB(255, 244, 16, 0),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                width: 12,
              ),
              Container(
                width: 290,
                height: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  for (var Horizentalnavigator in Data.W5)
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromARGB(255, 48, 48, 48),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              Horizentalnavigator.name,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),

                          // Container(
                          //   clipBehavior: Clip.hardEdge,
                          //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black),
                          //   child: const Icon(
                          //     Icons.home,
                          //     color: Colors.white,
                          //   ),
                          // ),

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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 240, 108, 0),
                ),
              )
            ],
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
                  size: 20,
                  color: Color.fromARGB(255, 110, 110, 110),
                ),
              ),
              Row(
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/FireIcon.svg/1200px-FireIcon.svg.png',
                    height: 32,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'الاكثر مبيعا',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          for (var i in meals)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MealPage(
                            male: i,
                          )),
                );
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: const Color.fromARGB(255, 23, 23, 23)),
                child: Column(
                  children: [
                    SizedBox(
                        height: 200,
                        width: 300,
                        child: Image.network(
                          i.image,
                          fit: BoxFit.cover,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(i.price, style: const TextStyle(color: Colors.white, fontSize: 20)),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text('ريال', style: TextStyle(color: Colors.white, fontSize: 20)),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        SizedBox(child: Text(i.name, style: const TextStyle(color: Colors.white, fontSize: 20))),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}

//  child: ListView.builder(
//               itemCount: meals.length,
//               itemBuilder: (context, i) {
//                 return Column(
//                   children: [
//                     SizedBox(
//                         height: 200,
//                         child: Image.network(
//                           "${meals[i]['image']}",
//                           fit: BoxFit.cover,
//                         )),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "${meals[i]['price']}",
//                           style: const TextStyle(color: Colors.white, fontSize: 20),
//                         ),
//                         Text("${meals[i]['name']}", style: const TextStyle(color: Colors.white, fontSize: 20)),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 12,
//                     ),
//                   ],
//                 );
//               }),




// List meals = [];

// var mealsref = FirebaseFirestore.instance.collection('basken_meals');
// getData() async {
//   var responce = await mealsref.get();
//   for (var element in responce.docs) {
//     setState(() {
//       meals.add(element.data());
//     });
//   }
//   print(meals);
// }

// @override
// void initState() {
//   getData();
//   super.initState();
// }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// import '../contents/constant/Modols.dart';
// import 'MealPage.dart';

// class Resturantdetails extends StatefulWidget {
//   final Restuarant value; // object

//   const Resturantdetails({
//     super.key,
//     required this.value,
//   });

//   @override
//   State<Resturantdetails> createState() => _ResturantdetailsState();
// }

// class _ResturantdetailsState extends State<Resturantdetails> {
//   List<Meal> meals = [];
//   @override
//   void initState() {
//     super.initState();

//     listenToRestaurants();
//   }

//   listenToRestaurants() {
//     FirebaseFirestore.instance
//         .collection('all_males')
//         .where("resturant_id", isEqualTo: widget.value.id)
//         .snapshots()
//         .listen((collection) {
//       List<Meal> newList = [];
//       for (final doc in collection.docs) {
//         final meal = Meal.fromMap(doc.data());
//         newList.add(meal);
//       }

//       meals = newList;
//       setState(() {});
//     });
//   }