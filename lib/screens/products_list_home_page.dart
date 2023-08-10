import 'package:e_commerce_app/models/productmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'product_details.dart';
import '../models/app_enums.dart';
import 'navigationdrawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentPage = DrawerSections.man;
  int currentIndex = 0;

  final List<Map<String, dynamic>> _categoryList = [
    {
      'category_name': 'Man',
      'image': 'assets/images/man1-image.webp',
    },
    {
      'category_name': 'Women',
      'image': 'assets/images/woman1-image.jpg',
    },
    {
      'category_name': 'Kids',
      'image': 'assets/images/kids1-image.jpg',
    },
    {
      'category_name': 'Footwear',
      'image': 'assets/images/Nike-shoes3.jpg',
    },
    {
      'category_name': 'Beauty',
      'image': 'assets/images/beauty-image.jpg',
    },
    {
      'category_name': 'Accessories',
      'image': 'assets/images/watch2-image.jpg',
    },
    {
      'category_name': 'Home',
      'image': 'assets/images/Nike-shoes1.jpg',
    },
    {
      'category_name': 'Jewellery',
      'image': 'assets/images/jewellery6-image.webp',
    },
    {
      'category_name': 'Hot_Trends',
      'image': 'assets/images/Nike-shoes3.jpg',
    },
    {
      'category_name': 'Studio',
      'image': 'assets/images/Nike-shoes4.jpg',
    },
    {
      'category_name': 'Gift_Cards',
      'image': 'assets/images/Nike-shoes.jpg',
    },
  ];


  final List<List<Product>> _productList = [

    /// 1-Shoes
    [
      Product(
        id: '1',
        name: 'Shoes',
        category: 'Man Shoes',
        images: [
          'assets/images/shoes-image(v).webp',
          'assets/images/shoees-image(vi).webp',
          'assets/images/shoes-image(vii).webp',
          'assets/images/shoes-image(viii).webp',
          'assets/images/shoes-image(ix).webp',
          'assets/images/shoes-image(x).webp',
        ],
        description: 'Sport Shoes',
        price: 2999,
        quantity: 3,
      ),
      Product(
        id: '2',
        name: 'Shoes',
        category: 'Man Shoes',
        images: [
          'assets/images/shoes1-image(i).webp',
          'assets/images/shoes1-image(ii).webp',
          'assets/images/shoes1-image(iii).webp',
          'assets/images/shoes1-image(iv).webp',
          'assets/images/shoes1-image(v).webp',
          'assets/images/shoes1-image(vi).webp',
          'assets/images/shoes1-image(vii).webp',
          'assets/images/shoes1-image(viii).webp',
          'assets/images/shoes1-image(ix).webp',
          'assets/images/shoes1-image(x).webp',
        ],
        description: 'Sport Shoes',
        price: 2999,
        quantity: 3,
      ),
      Product(
        id: '3',
        name: 'Shoes',
        category: 'Man Shoes',
        images: [
          'assets/images/shoes2-image(i).webp',
          'assets/images/shoes2-image(ii).webp',
          'assets/images/shoes2-image(iii).webp',
          'assets/images/shoes2-image(iv).jpeg',
          'assets/images/shoes2-image(v).jpeg',
          'assets/images/shoes2-image(vi).webp',
          'assets/images/shoes2-image(vii).webp',
          'assets/images/shoes2-image(viii).webp',
          'assets/images/shoes2-image(ix).webp',
        ],
        description: 'Sport Shoes',
        price: 2999,
        quantity: 3,
      ),
      Product(
        id: '4',
        name: 'Shoes',
        category: 'Man Shoes',
        images: ['assets/images/Nike-shoes.jpg'],
        description: 'Sport Shoes',
        price: 2999,
        quantity: 3,
      ),
      Product(
        id: '5',
        name: 'Shoes',
        category: 'Man Shoes',
        images: ['assets/images/Nike-shoes.jpg'],
        description: 'Sport Shoes',
        price: 2999,
        quantity: 3,
      ),
      Product(
        id: '6',
        name: 'Shoes',
        category: 'Man Shoes',
        images: ['assets/images/Nike-shoes.jpg'],
        description: 'Sport Shoes',
        price: 2999,
        quantity: 3,
      ),
      Product(
        id: '7',
        name: 'Shoes',
        category: 'Man Shoes',
        images: ['assets/images/Nike-shoes.jpg'],
        description: 'Sport Shoes',
        price: 2999,
        quantity: 3,
      ),
      Product(
        id: '8',
        name: 'Shoes',
        category: 'Man Shoes',
        images: ['assets/images/Nike-shoes.jpg'],
        description: 'Sport Shoes',
        price: 2999,
        quantity: 3,
      ),
      Product(
        id: '9',
        name: 'Shoes',
        category: 'Man Shoes',
        images: ['assets/images/Nike-shoes.jpg'],
        description: 'Sport Shoes',
        price: 2999,
        quantity: 3,
      ),
      Product(
        id: '10',
        name: 'Shoes',
        category: 'Man Shoes',
        images: ['assets/images/Nike-shoes.jpg'],
        description: 'Sport Shoes',
        price: 2999,
        quantity: 3,
      ),
    ],

    /// 2-Clothes
    [
      Product(
        id: '1',
        name: 'Clothes',
        category: 'Women',
        images: [
          'assets/images/women-image.jpeg',
          'assets/images/women1-image.jpg',
          'assets/images/women2-image.jpg',
          'assets/images/women3-image.jpg',
          'assets/images/women4-image.jpg',
          'assets/images/women5-image.jpg',
          'assets/images/women6-image.jpg',
          'assets/images/women7-image.webp',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '2',
        name: 'Clothes',
        category: 'Women',
        images: [
          'assets/images/T-shirt1-image.webp',
          'assets/images/T-shirt2-image.webp',
          'assets/images/T-shirt3-image.webp',
          'assets/images/T-shirt4-image.webp',
          'assets/images/T-shirt5-image.webp',
          'assets/images/T-shirt6-image.webp',
          'assets/images/T-shirt7-image.webp',
          'assets/images/T-shirt8-image.webp',
          'assets/images/T-shirt9-image.webp',
          'assets/images/T-shirt10-image.webp',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '3',
        name: 'Clothes',
        category: 'Women',
        images: [
          'assets/images/T-shirt3-image.webp',
          'assets/images/T-shirt3-image2.jpg',
          'assets/images/T-shirt3-image3.jpg',
          'assets/images/T-shirt3-image4.jpg',
          'assets/images/T-shirt3-image5.jpg',
          'assets/images/T-shirt3-image6.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '4',
        name: 'Clothes',
        category: 'Women',
        images: [
          'assets/images/women-image1.jpg',
          'assets/images/women-image2.jpg',
          'assets/images/women-image3.jpg',
          'assets/images/women-image4.jpg',
          'assets/images/women-image5.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '5',
        name: 'Clothes',
        category: 'Women',
        images: [
          'assets/images/girl1-image.webp',
          'assets/images/girl2-image.webp',
          'assets/images/girl3-image.webp',
          'assets/images/girl4-image.webp',
          'assets/images/girl5-image.webp',
          'assets/images/girl6-image.jpg',
          'assets/images/girl7-image.jpeg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '6',
        name: 'Clothes',
        category: 'Women',
        images: [
          'assets/images/women8-image.webp',
          'assets/images/women9-image.webp',
          'assets/images/women10-image.jpg',
          'assets/images/women11-image.jpeg',
          'assets/images/women12-image.webp',
          'assets/images/women13-image.webp',
          'assets/images/women14-image.webp',
          'assets/images/women15-image.webp',
          'assets/images/women-image.jpeg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '7',
        name: 'Clothes',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '8',
        name: 'Clothes',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '9',
        name: 'Clothes',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '10',
        name: 'Clothes',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
    ],

    /// 3-Watch
    [
      Product(
        id: '1',
        name: 'Watch',
        category: 'Women',
        images: [
          'assets/images/watch1-image.webp',
          'assets/images/watch2-image.jpg',
          'assets/images/watch3-image.jpg',
          'assets/images/watch4-image.jpg',
          'assets/images/watch5-image.webp',
          'assets/images/watch06-image.jpg',
          'assets/images/watch7-image.webp',
          'assets/images/watch8-image.jpg',
          'assets/images/watch9-image.jpg',
          'assets/images/watch10-image.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '2',
        name: 'Watch',
        category: 'Women',
        images: [
          'assets/images/watch01-image.jpg',
          'assets/images/watch02-image.jpg',
          'assets/images/watch03-image.jpg',
          'assets/images/watch04-image.jpg',
          'assets/images/watch05-image.jpg',
          'assets/images/watch06-image.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '3',
        name: 'Watch',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '4',
        name: 'Watch',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '5',
        name: 'Watch',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '6',
        name: 'Watch',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '7',
        name: 'Watch',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '8',
        name: 'Watch',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '9',
        name: 'Watch',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '10',
        name: 'Watch',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
    ],

    /// 4-Jewellery
    [
      Product(
        id: '1',
        name: 'Jewellery',
        category: 'Women',
        images: [
          'assets/images/jewellery1-image.webp',
           'assets/images/jewellery2-image.webp',
          'assets/images/jewellery3-image.webp',
          'assets/images/jewellery4-image.webp',
          'assets/images/jewellery5-image.webp',
          'assets/images/jewellery6-image.webp',
          'assets/images/jewellery7-image.webp',
          'assets/images/jewellery8-image.webp',
          'assets/images/jewellery9-image.webp',
          'assets/images/jewellery10-image.webp',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '2',
        name: 'Jewellery',
        category: 'Women',
        images: [
          'assets/images/jevellery01-image.jpg',
          'assets/images/jevellery02-image.jpg',
          'assets/images/jevelery03-image.jpg',
          'assets/images/jevellery04-image.jpg',
          'assets/images/jevellery05-image.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '3',
        name: 'Jewellery',
        category: 'Women',
        images: [
          'assets/images/jevellery06-image.jpg',
          'assets/images/jevellery07-image.jpg',
          'assets/images/jevellery08-image.jpg',
          'assets/images/jevellery09-image.jpg',
          'assets/images/jevellery10-image.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '4',
        name: 'Jewellery',
        category: 'Women',
        images: [
          'assets/images/jevellery11-image.jpg',
          'assets/images/jevellery12-image.jpg',
          'assets/images/jevellery13-image.jpg',
          'assets/images/jevellery14-image.jpg',
          'assets/images/jevellery15-image.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '5',
        name: 'Jewellery',
        category: 'Women',
        images: [
          'assets/images/jevellery16-image.jpg',
          'assets/images/jevellery17-image.jpg',
          'assets/images/jevellery18-image.jpg',
          'assets/images/jevellery19-image.jpg',
          'assets/images/jevellery20-image.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '6',
        name: 'Jewellery',
        category: 'Women',
        images: [
          'assets/images/jevellery21-image.jpg',
          'assets/images/jevellery22-image.jpg',
          'assets/images/jevellery23-image.jpg',
          'assets/images/jevellery24-image.jpg',
          'assets/images/jevellery25-image.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '7',
        name: 'Jewellery',
        category: 'Women',
        images: [
          'assets/images/jevellery26-image.jpg',
          'assets/images/jevellery27-image.jpg',
          'assets/images/jevellery46-image.jpg',
          'assets/images/jevellery29-image.jpg',
          'assets/images/jevellery30-image.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '8',
        name: 'Jewellery',
        category: 'Women',
        images: [
          'assets/images/jevellery31-image.jpg',
          'assets/images/jevellery32-image.jpg',
          'assets/images/jevellery33-image.jpg',
          'assets/images/jevellery34-image.jpg',
          'assets/images/jevellery35-image.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '9',
        name: 'Jewellery',
        category: 'Women',
        images: [
          'assets/images/jevellery36-image.jpg',
          'assets/images/jevellery37-image.jpg',
          'assets/images/jevellery38-image.jpg',
          'assets/images/jevellery39-image.jpg',
          'assets/images/jevellery40-image.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '10',
        name: 'Jewellery',
        category: 'Women',
        images: [
          'assets/images/jevellery41-image.jpg',
          'assets/images/jevellery42-image.jpg',
          'assets/images/jevellery43-image.jpg',
          'assets/images/jevellery44-image.jpg',
          'assets/images/jevellery45-image.jpg',
        ],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
    ],

    /// 5-Cosmetic
    [
      Product(
        id: '1',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '2',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '3',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '4',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '5',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '6',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '7',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '8',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '9',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '10',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
    ],

    /// 6-Grocery
    [
      Product(
        id: '1',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '2',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '3',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '4',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '5',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '6',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '7',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '8',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '9',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '10',
        name: 'Jewellery',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
    ],

    ///  7-Home Furniture
    [
      Product(
        id: '1',
        name: 'Home Furniture',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '2',
        name: 'Home Furniture',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '3',
        name: 'Home Furniture',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '4',
        name: 'Home Furniture',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '5',
        name: 'Home Furniture',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '6',
        name: 'Home Furniture',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '7',
        name: 'Home Furniture',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '8',
        name: 'Home Furniture',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '9',
        name: 'Home Furniture',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '10',
        name: 'Home Furniture',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
    ],

    /// 8-Electronics
    [
      Product(
        id: '1',
        name: 'Electronics',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '2',
        name: 'Electronics',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '3',
        name: 'Electronics',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '4',
        name: 'Electronics',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '5',
        name: 'Electronics',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '6',
        name: 'Electronics',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '7',
        name: 'Electronics',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '8',
        name: 'Electronics',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '9',
        name: 'Electronics',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '10',
        name: 'Electronics',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
    ],

    /// 9-Mobiles
    [
      Product(
        id: '1',
        name: 'Mobiles',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '2',
        name: 'Mobiles',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '3',
        name: 'Mobiles',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '4',
        name: 'Mobiles',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '5',
        name: 'Mobiles',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '6',
        name: 'Mobiles',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '7',
        name: 'Jewellery',
        category: 'Mobiles',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '8',
        name: 'Mobiles',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '9',
        name: 'Mobiles',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '10',
        name: 'Mobiles',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
    ],

    /// 10-Bicycle
    [
      Product(
        id: '1',
        name: 'Bicycle',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '2',
        name: 'Bicycle',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '3',
        name: 'Bicycle',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '4',
        name: 'Bicycle',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '5',
        name: 'Bicycle',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '6',
        name: 'Bicycle',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '7',
        name: 'Bicycle',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '8',
        name: 'Bicycle',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '9',
        name: 'Bicycle',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
      Product(
        id: '10',
        name: 'Bicycle',
        category: 'Women',
        images: ['assets/images/women-image.jpeg'],
        description: 'Jeans T-shirt',
        price: 599,
        quantity: 4,
      ),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        // leading: Image(image: AssetImage('assets/images/myntra-logo.png'),width: 20,),
        actions: [
          const Image(
            image: AssetImage('assets/images/myntra-logo.png'),
            width: 40,
          ),
          const SizedBox(width: 100),
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.red],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: Column(
        children: [
          Container(   /// circular image
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 100,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _categoryList.length,
              itemBuilder: (ctx, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        child: ClipOval(
                          child: Image.asset(
                            _categoryList[index]['image'],
                            height: 64,
                            width: 64,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        _categoryList[index]['category_name'],
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _productList.length,
                itemBuilder: (ctx, index) {
                  return SizedBox(
                    height: 200,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: _productList[index].length,
                      itemBuilder: (ctx, innerIndex) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyDecorationPage(product: _productList[index][innerIndex],),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(80),
                                    child: Image.asset(
                                      _productList[index][innerIndex].images[0],
                                      height: 160,
                                      width: 160,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                // ),
                                Text(
                                  _productList[index][innerIndex].name,
                                  style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),

          ),
          // Container(
          //   child: Column(
          //     children: [
          //       SizedBox(
          //         height: 300,
          //         width: double.infinity,
          //         child: PageView.builder(
          //           onPageChanged: (index){
          //             setState(() {
          //               currentIndex = index;
          //             });
          //           },
          //           itemCount: images.length,
          //           itemBuilder: (context, index){
          //           return SizedBox(
          //             height: 400,
          //             width: double.infinity,
          //             child: Image.asset(images[index],
          //               fit: BoxFit.cover,
          //             ),
          //           );
          //         },
          //         ),
          //       ),
          //       const SizedBox(
          //         height: 20,
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           for (var i=0;i<images.length;i++)
          //             buildIndicator(currentIndex == i),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          physics:
              const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          menuItem(1, 'Man', Icons.man_outlined,
              currentPage == DrawerSections.man ? true : false),
          menuItem(2, 'women', Icons.woman_outlined,
              currentPage == DrawerSections.women ? true : false),
          menuItem(3, 'kids', Icons.child_care_outlined,
              currentPage == DrawerSections.kids ? true : false),
          menuItem(4, 'home_living', Icons.home,
              currentPage == DrawerSections.home_livig ? true : false),
          menuItem(5, 'beauty', Icons.add_home_sharp,
              currentPage == DrawerSections.beauty ? true : false),
          const Divider(),
          menuItem(6, 'Studio', Icons.home_max_outlined,
              currentPage == DrawerSections.studio ? true : false),
          menuItem(7, 'Mall', Icons.home_outlined,
              currentPage == DrawerSections.mall ? true : false),
          menuItem(8, 'Insider', Icons.man_outlined,
              currentPage == DrawerSections.insider ? true : false),
          menuItem(9, 'cards', Icons.card_giftcard,
              currentPage == DrawerSections.cards ? true : false),
          menuItem(10, 'contact_Us', Icons.phone,
              currentPage == DrawerSections.contact_Us ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.man;
            } else if (id == 2) {
              currentPage = DrawerSections.women;
            } else if (id == 3) {
              currentPage = DrawerSections.kids;
            } else if (id == 4) {
              currentPage = DrawerSections.home_livig;
            } else if (id == 5) {
              currentPage = DrawerSections.beauty;
            } else if (id == 6) {
              currentPage = DrawerSections.studio;
            } else if (id == 7) {
              currentPage = DrawerSections.mall;
            } else if (id == 8) {
              currentPage = DrawerSections.insider;
            } else if (id == 9) {
              currentPage = DrawerSections.cards;
            } else if (id == 10) {
              currentPage = DrawerSections.contact_Us;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildIndicator(bool isSelected) {
    return Container(
      height: isSelected ? 12 : 8,
      width: isSelected ? 12 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.black : Colors.grey,
      ),
    );
  }
}
