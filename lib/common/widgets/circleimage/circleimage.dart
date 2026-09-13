import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
  });

  final String imageUrl;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 4,
        ), // Optional: border around the whole avatar
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
