import 'package:flutter/material.dart';

class ChipWidget extends StatefulWidget {
  const ChipWidget({super.key});

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  List arr = ['ram', 'shyam', 'hari'];

  bool selectedValue = false;
  bool selectTrue = true ;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GestureDetector(
            child: const Chip(
              label: Text('Flutter'),
              avatar: CircleAvatar(child: Text('F')),
            ),
          ),
          const SizedBox(height: 10),
          InputChip(
            label: const Text('Input chip'),
            onDeleted: () {
              print('Deleted');
            },
          ),
          const SizedBox(height: 10),
          ChoiceChip(
            label: const Text('Choice chip'),
            selected: selectTrue,
            onSelected: (bool selected) {
              setState(() {
                selectTrue = !selectTrue ;
              });
            },
          ),
          const SizedBox(height: 10),
          FilterChip(
            label: const Text('Filter chip'),
            selected: selectedValue,
            onSelected: (bool selected) { setState(() {
              selectedValue = !selectedValue;
            });},
          ),
          const SizedBox(height: 10),
          ActionChip(
            label: const Text('Action chip'),
            onPressed: () {
              print('Action triggered');
            },
          ),
          
        ],
      ),
    );
  }
}
