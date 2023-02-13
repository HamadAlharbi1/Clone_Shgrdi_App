
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
       
  //        List meals = [];

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
