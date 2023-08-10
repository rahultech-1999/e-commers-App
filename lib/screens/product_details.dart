import 'package:flutter/material.dart';

import '../models/productmodel.dart';

class MyDecorationPage extends StatefulWidget {
  final Product product;
  const MyDecorationPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<MyDecorationPage> createState() => _MyDecorationPageState();
}

class _MyDecorationPageState extends State<MyDecorationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
        centerTitle: true,

        actions: [
          const Image(
            image: AssetImage('assets/images/myntra-logo.png'),
            width: 40,
          ),
          const SizedBox(
            width: 70,
          ),
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
          IconButton(
            icon: const Icon(Icons.shopping_cart),
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
          SizedBox(
            height: 400,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: widget.product.images.length,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(178),
                      child: Image.asset(
                        widget.product.images[index],
                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),


          // ),
          Text(
            widget.product.name,
            style: const TextStyle(
              fontSize: 31,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            widget.product.description,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            widget.product.category,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            widget.product.id,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            widget.product.price.toString(),
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            widget.product.quantity.toString(),
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
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
