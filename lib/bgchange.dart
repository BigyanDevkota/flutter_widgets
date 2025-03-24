import 'package:flutter/material.dart';

class BgContainer extends StatelessWidget {
  const BgContainer({super.key});



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
      
        children: [
          InkWell(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ),
          InkWell(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
          ),
          InkWell(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
          ),
          InkWell(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            onTap: () {
              
            },
          ),
          InkWell(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
