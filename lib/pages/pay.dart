import 'package:flutter/material.dart';

import '../contents/constant/Modols.dart';

class Pay extends StatelessWidget {
  final Meal male;
  const Pay({
    super.key,
    required this.male,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 23, 23),
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 230, 0),
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                ),
                Text(
                  'الدفع ',
                  style:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'X',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'كيف حاب تدفع ..!',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
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
                      children: const [
                        Text(
                          'باسكن روبنز',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
