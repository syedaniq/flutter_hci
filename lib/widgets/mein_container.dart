import 'package:flutter/material.dart';

class MeinContainer extends StatelessWidget {
  const MeinContainer({
    super.key,
    required this.name,
    required this.adresse,
  });

  final String name;
  final String adresse;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        color: Colors.brown.shade300,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 30),
              ),
              Text(
                adresse,
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.flutter_dash,
              size: 80,
            ),
          ),
        ],
      ),
    );
  }
}
