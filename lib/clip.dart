import 'package:flutter/material.dart';

class ClipWidget extends StatelessWidget {
  const ClipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            child: Container(
              height: 50,
              width: 150,
              color: Colors.amber,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ClipRect(
            // borderRadius: BorderRadius.circular(20),
            child: Align(
              alignment: Alignment.topRight,
              heightFactor: 0.25,
              widthFactor: 0.4,
              child: Image.network(
                  'https://images.ottplay.com/images/big/asit-kumarr-modi-with-khushi-mali-1728021864.jpeg'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ClipOval(
            child: Image.network(
              'https://images.ottplay.com/images/big/asit-kumarr-modi-with-khushi-mali-1728021864.jpeg',
              height: 200,
              width: 200,
              fit: BoxFit.fill,
              // color: Colors.amber,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ClipPath(
            clipper: ThisIsMYCustomWidget(),
            child: Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),
          ),
          InkWell(onTap: () {} ,
            child: const CircleAvatar(
              child: Text('data'),
            ),
          )
        ],
      ),
    );
  }
}

class ThisIsMYCustomWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width / 2, 0); // Top center
    path.lineTo(size.width, size.height); // Bottom right
    path.lineTo(0, size.height); // Bottom left
    path.close(); // Connects back to the start

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
