import 'package:flutter/material.dart';

class DiscountTile extends StatelessWidget {
  const DiscountTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: const Color(0xff17A2B8),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          const Placeholder(fallbackHeight: 40.0, fallbackWidth: 40.0),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free Shipping Over \$0',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  'Free returns and exchange',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: const Icon(Icons.phone),
          )
        ],
      ),
    );
  }
}
