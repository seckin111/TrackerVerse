import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final int index;

  const ImageWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 200,
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/200/300?random=$index'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
