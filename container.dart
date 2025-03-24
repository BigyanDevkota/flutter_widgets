import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        // color: Colors.blue,

        // alignment: Alignment.topLeft,
        // alignment: Alignment.bottomLeft,
        alignment: Alignment.bottomCenter,

        // margin: EdgeInsets.symmetric(vertical: 30),
        // margin: EdgeInsets.symmetric(horizontal: 30),
        // margin: EdgeInsets.only(top: 50),
        margin: const EdgeInsets.only(right: 70),
        // margin: EdgeInsets.only(left: 50),

        // padding: const EdgeInsets.only(top: 100),
        padding: const EdgeInsets.only(bottom: 20),

        width: 150,
        height: 180,

        decoration: const BoxDecoration(
          color: Colors.red,
          // gradient: LinearGradient(
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
          //   colors: [
          //     Colors.blue,
          //     Color.fromARGB(255, 210, 255, 63),
          //   ],
          // ),
          borderRadius: BorderRadius.all(
            // Radius.circular(100),
            Radius.elliptical(20, 50),
          ),
        ),

        // foregroundDecoration: const BoxDecoration(
        //   color: Colors.green,
        // ),

        child: const Text(
          'hello guys',
          style: TextStyle(
            color: Colors.black,
          ),
        ),

        // child: const Column(
        //   children: [
        //     // color: Colors.green,
        //     Text('hello'),
        //   ],
        // ),
      ),
    );
  }
}
