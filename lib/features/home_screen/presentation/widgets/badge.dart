import 'package:flutter/material.dart';

class BadgeCount extends StatelessWidget {
  const BadgeCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 18,
      width: 18,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 2),
        shape: BoxShape.circle,
      ),
      child: const Text("12", style: TextStyle(fontSize: 8)),
    );
  }
}
