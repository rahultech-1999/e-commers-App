import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyanAccent,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/myntra-logo.png')

              ),
            ),
          ),
          const Text("Upgredx App",style: TextStyle(color: Colors.white10,fontSize: 14),),
          const Text("",style: TextStyle(color: Colors.grey,fontSize: 14),),
        ],
      ),
    );
  }
}
