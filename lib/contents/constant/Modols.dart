//products list
class Product {
  String image;
  String image2;
  String name;
  Product({
    required this.image,
    required this.image2,
    required this.name,
  });
}

class Data {
  static List<Product> W2 = [
    Product(
      image:
          'https://cdn.dribbble.com/users/1045381/screenshots/5949447/media/68eefa6481b31e68c798076044a96664.jpg?compress=1&resize=400x300&vertical=top',
      image2: '',
      name: 'مطاعم',
    ),
    Product(
      image2: '',
      image: 'https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/512x512/delivery_truck.png',
      name: ' توصيل مجاني',
    ),
    Product(
      image2: '',
      image: 'https://cdn-icons-png.flaticon.com/128/2854/2854358.png',
      name: 'ارسل غرض',
    ),
    Product(
      image2: '',
      image: 'https://img.freepik.com/free-icon/delivery-truck_318-488988.jpg',
      name: 'توصيل',
    ),
  ];

  static List<Product> W3 = [
    Product(
      image2: '',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5h0NU2zIBWlUK9yvn_EEykluHGgHmKziAvA&usqp=CAU',
      name: 'الكل ',
    ),
    Product(
      image2: '',
      image:
          'data:image/jpeg;base64,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',
      name: 'المأكولات السريعه',
    ),
    Product(
      image2: '',
      image: 'https://cdn-icons-png.flaticon.com/128/4195/4195414.png',
      name: 'شعبيات',
    ),
    Product(
      image2: '',
      image: 'https://cdn-icons-png.flaticon.com/512/4192/4192361.png',
      name: 'مأكولات سعودية',
    ),
    Product(
      image2: '',
      image:
          'data:image/png;base64,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',
      name: 'مشاوي',
    ),
    Product(
      image2: '',
      image:
          'https://w7.pngwing.com/pngs/428/120/png-transparent-shawarma-red-cooking-meatloaf-computer-icons-meat-food-rectangle-logo.png',
      name: 'شاورما',
    ),
    Product(
      image2: '',
      image:
          'https://png.pngtree.com/png-clipart/20220124/original/pngtree-coffee-icon-icon-element-png-image_7186003.png',
      name: 'القهوة',
    ),
    Product(
      image2: '',
      image:
          'https://png.pngtree.com/element_our/20190604/ourmid/pngtree-glass-of-juice-orange-juice-image_1473623.jpg',
      name: 'عصيرات',
    ),
  ];

  static List<Product> W5 = [
    Product(
      image2: '',
      image: '',
      name: 'الاكثر مبيعا  ',
    ),
    Product(
      image2: '',
      image: '',
      name: 'عرض البوكسات الكبير',
    ),
    Product(
      image2: '',
      image: '',
      name: 'المشروبات الشتوية الجديده',
    ),
    Product(
      image2: '',
      image: '',
      name: 'ماما بنز',
    ),
    Product(
      image2: '',
      image: '',
      name: 'تشيل اوت بوكس',
    ),
    Product(
      image2: '',
      image: '',
      name: 'كيك جار',
    ),
    Product(
      image2: '',
      image: '',
      name: 'موهيتو',
    ),
    Product(
      image2: '',
      image: '',
      name: 'مشروبات باردة',
    ),
  ];
  static List<Product> W6 = [
    Product(
      image2: '',
      image: 'https://e.top4top.io/p_2594i9npq0.jpg',
      name: ' ',
    ),
    Product(
      image2: '',
      image: 'https://f.top4top.io/p_2594spw2o1.jpg',
      name: '',
    ),
  ];
  static List<Product> W7 = [
    Product(
      image2: '',
      image: 'https://e.top4top.io/p_2594i9npq0.jpg',
      name: ' ',
    ),
  ];
}

class Data_Resturants1 {
  static List<Restuarant> resturant_W4 = [
    Restuarant(
        id: '1',
        waitingperiod: '40',
        trackingprice: '0',
        minorderprice: '40',
        image: 'https://a.top4top.io/p_2594pquec0.jpg',
        name: 'ماما بنز',
        rating: '4.5',
        distance: '8.9',
        tracking: 'التوصيل مجاني',
        open: 'مفتوح',
        address: 'الشرف ,حي النظيم'),
    Restuarant(
        id: '2',
        waitingperiod: '45',
        trackingprice: '5.0',
        minorderprice: '35',
        image: 'https://b.top4top.io/p_2594439pl1.jpg',
        name: 'باسكن روبنز',
        rating: '5',
        distance: ' 3.4',
        tracking: '5.0 ',
        open: 'مفتوح',
        address: 'الرمال ,الرياض'),
    Restuarant(
        id: '3',
        waitingperiod: '30',
        trackingprice: '18',
        minorderprice: '55',
        image: 'https://d.top4top.io/p_2594iqnxi3.jpg',
        name: 'مولتن شوكلت كافيه',
        rating: '5.0',
        distance: '16 ',
        tracking: '18  ',
        open: 'مفتوح',
        address: ',حي اليرموك'),
    Restuarant(
        id: '4',
        waitingperiod: '55',
        trackingprice: '22',
        minorderprice: '46',
        image: 'https://c.top4top.io/p_2594cvx3i2.jpg',
        name: 'حلويات روز',
        rating: '4.8',
        distance: '12 ',
        tracking: '22  ',
        open: 'مفتوح',
        address: 'طريق الدمام , غرناطة'),
  ];
}

class Restuarant {
  String id;
  String image;
  String trackingprice;
  String minorderprice;
  String waitingperiod;
  String open;
  String address;
  String rating;
  String distance;
  String tracking;
  String name;
  Restuarant({
    required this.id,
    required this.image,
    required this.trackingprice,
    required this.minorderprice,
    required this.waitingperiod,
    required this.address,
    required this.open,
    required this.rating,
    required this.distance,
    required this.tracking,
    required this.name,
  });

  factory Restuarant.fromMap(Map<String, dynamic> map) {
    return Restuarant(
        id: map['id'],
        name: map['name'],
        address: map['address'],
        image: map['image'],
        trackingprice: map['trackingprice'],
        minorderprice: map['minorderprice'],
        waitingperiod: map['waitingperiod'],
        open: map['open'],
        rating: map['rating'],
        distance: map['distance'],
        tracking: map['tracking']);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'image': image,
      'trackingprice': trackingprice,
      'minorderprice': minorderprice,
      'waitingperiod': waitingperiod,
      'open': open,
      'rating': rating,
      'distance': distance,
      'tracking': tracking,
    };
  }
}

class Meals {
  static List<Meal> all_males = [
    Meal(
      resturant_id: '1',
      id: '1',
      price: '21',
      image: 'https://mammabunzcafe.com/sites/default/files/styles/large/public/2022-06/Nutella.jpg?itok=MJ76uE3m',
      name: 'بنز بالنوتيلا',
    ),
    Meal(
      resturant_id: '1',
      id: '2',
      price: '23',
      image:
          'https://mammabunzcafe.com/sites/default/files/styles/large/public/2022-06/Ultimate%20Belgian%20Chocolate.jpg?itok=3vQKbltx',
      name: 'بنز بالشوكلاته البلجيكية',
    ),
    Meal(
      resturant_id: '1',
      id: '3',
      price: '23',
      image:
          'https://hungerstation.com/_next/image?url=https%3A%2F%2Fhsaa.hsobjects.com%2Fh%2Fmenuitems%2Fimages%2F005%2F547%2F856%2Fb4a05c8abd7c13af9f3c4602ced02044-size1200.jpg&w=256&q=75',
      name: 'بنز اللوتس',
    ),
    Meal(
      resturant_id: '2',
      id: '4',
      price: '19',
      image:
          'https://www.baskinrobbinsmea.com/wp-content/uploads/2020/06/%D8%A7%D9%8A%D8%B3-%D9%83%D8%B1%D9%8A%D9%85-%D9%83%D8%A8-2-%D9%85%D8%BA%D8%B1%D9%81%D8%A9-%D8%AC%D9%88%D9%86%D9%8A%D9%88%D8%B1.jpg',
      name: 'مغرفتين جونيور كوب ',
    ),
    Meal(
      resturant_id: '2',
      id: '5',
      price: '10',
      image:
          'https://www.baskinrobbinsmea.com/wp-content/uploads/2020/06/%D8%A7%D9%8A%D8%B3-%D9%83%D8%B1%D9%8A%D9%85-%D9%83%D8%A8-%D9%85%D8%BA%D8%B1%D9%81%D8%A9-%D8%AC%D9%88%D9%86%D9%8A%D9%88%D8%B1-1.jpg',
      name: 'مغرفة جونيور كوب ',
    ),
    Meal(
      resturant_id: '2',
      id: '6',
      price: '34',
      image:
          'https://www.baskinrobbinsmea.com/wp-content/uploads/2020/06/%D8%B9%D8%A8%D9%88%D8%A9-%D8%A7%D9%84%D8%A7%D8%AD%D8%AA%D9%81%D8%A7%D9%84-%D8%AD%D9%88%D8%A7%D9%84%D9%89-20-%D9%85%D8%BA%D8%A7%D8%B1%D9%81.jpg',
      name: 'عبوة المرح ',
    ),
    Meal(
      resturant_id: '2',
      id: '7',
      price: '21',
      image:
          'https://static.chatfood.io/static/baskin-robbins-ksa/menu/double-bundle-2-jr-sundae-bak-aldbl-2-snday-jonyor_1623326325.jpg?fm=jpeg&h=300&w=300&q=90&fit=crop&crop=center',
      name: '2 كوب جونيور صنداي ',
    ),
    Meal(
      resturant_id: '3',
      id: '8',
      price: '125',
      image: 'https://pbs.twimg.com/media/Fe8oqZEWQAAFv7D?format=png&name=900x900',
      name: 'بوكس التجمعات العائلية',
    ),
    Meal(
      resturant_id: '3',
      id: '9',
      price: '89',
      image: 'https://pbs.twimg.com/ad_img/1513080748118523904/b2nZW4sF?format=jpg&name=900x900',
      name: 'بوكس الجمعات',
    ),
    Meal(
      resturant_id: '3',
      id: '10',
      price: '46',
      image:
          'https://moltenchocolatecafe.com.sa/sites/default/files/styles/large/public/2019-10/triple-chocolate-crepe.jpg?itok=0y1BWMIc',
      name: 'كريب شوكلاته لوتس',
    ),
    Meal(
      resturant_id: '3',
      id: '11',
      price: '48',
      image:
          'https://hsaa.hsobjects.com/h/restaurants/android_cover_photos/000/005/703/a4f90c82c7f36453e970db18ee19bb37-medium.jpg',
      name: 'بان كيك كيندر',
    ),
    Meal(
      resturant_id: '4',
      id: '12',
      price: '35',
      image: '',
      name: ' حلويات 1',
    ),
    Meal(
      resturant_id: '4',
      id: '13',
      price: '45',
      image: '',
      name: ' حلويات 2',
    ),
    Meal(
      resturant_id: '4',
      id: '14',
      price: '65',
      image: '',
      name: ' حلويات 3',
    ),
    Meal(
      resturant_id: '4',
      id: '15',
      price: '85',
      image: '',
      name: ' حلويات 4',
    ),
  ];

  // static List<Meal> basken_meals = [
  //   Meal(
  //     id: '1',
  //     price: '19',
  //     image:
  //         'https://www.baskinrobbinsmea.com/wp-content/uploads/2020/06/%D8%A7%D9%8A%D8%B3-%D9%83%D8%B1%D9%8A%D9%85-%D9%83%D8%A8-2-%D9%85%D8%BA%D8%B1%D9%81%D8%A9-%D8%AC%D9%88%D9%86%D9%8A%D9%88%D8%B1.jpg',
  //     name: 'مغرفتين جونيور كوب ',
  //   ),
  //   Meal(
  //     id: '2',
  //     price: '10',
  //     image:
  //         'https://www.baskinrobbinsmea.com/wp-content/uploads/2020/06/%D8%A7%D9%8A%D8%B3-%D9%83%D8%B1%D9%8A%D9%85-%D9%83%D8%A8-%D9%85%D8%BA%D8%B1%D9%81%D8%A9-%D8%AC%D9%88%D9%86%D9%8A%D9%88%D8%B1-1.jpg',
  //     name: 'مغرفة جونيور كوب ',
  //   ),
  //   Meal(
  //     id: '3',
  //     price: '34',
  //     image:
  //         'https://www.baskinrobbinsmea.com/wp-content/uploads/2020/06/%D8%B9%D8%A8%D9%88%D8%A9-%D8%A7%D9%84%D8%A7%D8%AD%D8%AA%D9%81%D8%A7%D9%84-%D8%AD%D9%88%D8%A7%D9%84%D9%89-20-%D9%85%D8%BA%D8%A7%D8%B1%D9%81.jpg',
  //     name: 'عبوة المرح ',
  //   ),
  //   Meal(
  //     id: '2',
  //     price: '21',
  //     image:
  //         'https://static.chatfood.io/static/baskin-robbins-ksa/menu/double-bundle-2-jr-sundae-bak-aldbl-2-snday-jonyor_1623326325.jpg?fm=jpeg&h=300&w=300&q=90&fit=crop&crop=center',
  //     name: '2 كوب جونيور صنداي ',
  //   ),
  // ];
  // static List<Meal> moltencafee_meals = [
  //   Meal(
  //     id: '1',
  //     price: '125',
  //     image: '',
  //     name: 'بوكس التجمعات العائلية',
  //   ),
  //   Meal(
  //     id: '2',
  //     price: '89',
  //     image: '',
  //     name: 'بوكس الجمعات',
  //   ),
  //   Meal(
  //     id: '3',
  //     price: '46',
  //     image: '',
  //     name: 'كريب شوكلاته لوتس',
  //   ),
  //   Meal(
  //     id: '4',
  //     price: '48',
  //     image: '',
  //     name: 'بان كيك كيندر',
  //   ),
  // ];
  // static List<Meal> roz_meals = [
  //   Meal(
  //     id: '1',
  //     price: '35',
  //     image: '',
  //     name: ' حلويات 1',
  //   ),
  //   Meal(
  //     id: '2',
  //     price: '45',
  //     image: '',
  //     name: ' حلويات 2',
  //   ),
  //   Meal(
  //     id: '3',
  //     price: '65',
  //     image: '',
  //     name: ' حلويات 3',
  //   ),
  //   Meal(
  //     id: '4',
  //     price: '85',
  //     image: '',
  //     name: ' حلويات 4',
  //   ),
  // ];
}

class Meal {
  String id;
  String image;
  String price;
  String name;
  String resturant_id;
  Meal({
    required this.id,
    required this.image,
    required this.name,
    required this.resturant_id,
    required this.price,
  });
  static List<Meal> cart = [];

  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      resturant_id: map['resturant_id'],
      id: map['id'],
      name: map['name'],
      image: map['image'],
      price: map['price'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'resturant_id': resturant_id,
      'id': id,
      'name': name,
      'image': image,
      'price': price,
    };
  }
}
