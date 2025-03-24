import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  String text = 'click me';
  String? selectedValue;

  Color fcolor = Colors.black;
  Color bcolor = Colors.blue;

  int noOfClick = 0;

  void click() {
    setState(() {
      noOfClick++;
      if (noOfClick % 2 == 1) {
        text = 'clicked';
        fcolor = Colors.white;
        bcolor = Colors.red;
      } else {
        text = 'click me';
        fcolor = Colors.black;
        bcolor = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            // autofocus: true,
            onPressed: click, // required
            style: ElevatedButton.styleFrom(
              foregroundColor: fcolor,
              backgroundColor: bcolor,
              // textStyle: TextStyle(fontSize: 30),
            ),
            child: Text(
              text,
              // style: TextStyle(fontSize: 30),
            ), //required
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('hi'),
            icon: const Icon(Icons.menu),
          ),
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.abc_sharp),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: fcolor,
              backgroundColor: bcolor,
            ),
            child: const Text('text button'),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: fcolor,
              backgroundColor: bcolor,
            ),
            child: const Text('outlined button'),
          ),
          const SizedBox(height: 10),

          // drop down button
          Container(
            decoration: BoxDecoration(
              color: Colors.blue, // Background color
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 12), // Padding inside the box
            child: DropdownButton<String>(
              value: selectedValue,
              hint: const Text(
                "Select an option",
                style: TextStyle(color: Colors.white), // Text color
              ),
              dropdownColor:
                  Colors.blue[300], // Background of the dropdown menu
              icon: const Icon(Icons.arrow_drop_down,
                  color: Colors.white), // Icon color
              style: const TextStyle(color: Colors.white, fontSize: 18), // Text style
              underline: const SizedBox(), // Removes the default underline
              items: const [
                DropdownMenuItem(value: '1', child: Text('Option 1')),
                DropdownMenuItem(value: '2', child: Text('Option 2')),
                DropdownMenuItem(value: '3', child: Text('Option 3')),
              ],
              onChanged: (newValue) {
                setState(() {
                  selectedValue = newValue;
                });
              },
            ),
          ),

          //sized box

          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('hello guys'),
          ),
        ],
      ),
    );
  }
}
