import 'package:ecommerceapp/features/home_screen/presentation/widgets/badge.dart';
import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';

class StatusSections extends StatelessWidget {
  const StatusSections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          10,
              (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    StatusView(
                      radius: 40.0,
                      numberOfStatus: 1,
                      strokeWidth: 2,
                      centerImageUrl:
                      'https://images.unsplash.com/photo-1707343848723-bd87dea7b118?q=80&w=3570&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                    const Positioned(top: 2, right: 2, child: BadgeCount()),
                  ],
                ),
                const SizedBox(height: 8),
                Text('Bags', style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
        ).toList(),
      ),
    );
  }
}
