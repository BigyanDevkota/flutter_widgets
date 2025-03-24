import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final wwe = ["john", "aj", "rock", "rey"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            // isThreeLine: false,
            // hoverColor: Colors.green,
            leading: Text('${index+1}'),
            title: Text(wwe[index]) ,
            subtitle:Text('hello') ,
            trailing: Icon(Icons.add),
          );
        },
        separatorBuilder: (context, index) => Divider(
          height: 5,
          thickness: 2,
        ),
        itemCount: wwe.length,
        // reverse: true,
        // itemExtent: 150,
        // scrollDirection: Axis.horizontal,
        // primary: true,
      ),
    );
  }
}
