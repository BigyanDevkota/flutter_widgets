import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Practice(),
    );
  }
}

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircleAvatar(
          radius: 70,
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          backgroundImage: NetworkImage(
            'https://www.filmibeat.com/wimg/mobi/2020/02/rashi-khanna_43.jpg',
          ),
          child: Text('Raashii'),
        
          // child: Container(
          //   height: 100,
          //   width: 50,
          //   child: Column(
          //     children: [
          //       Image.network(
          //           'https://www.filmibeat.com/wimg/mobi/2020/02/rashi-khanna_43.jpg'),
          //       Text(
          //         "Avatar",
          //         style: TextStyle(color: Colors.red),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
