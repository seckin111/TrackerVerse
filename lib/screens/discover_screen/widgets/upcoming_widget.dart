import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget {
  const UpcomingWidget({super.key, required this.imgUrl});
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          imgUrl,
          height: 180,
          width: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
