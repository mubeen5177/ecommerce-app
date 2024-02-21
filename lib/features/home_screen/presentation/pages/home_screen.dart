import 'package:ecommerceapp/features/home_screen/presentation/widgets/badge.dart';
import 'package:ecommerceapp/features/home_screen/presentation/widgets/discount_tile.dart';
import 'package:ecommerceapp/features/home_screen/presentation/widgets/products_section.dart';
import 'package:ecommerceapp/features/home_screen/presentation/widgets/status_section.dart';
import 'package:flutter/material.dart';

class FilterMode {
  String name;
  bool isSelected;

  FilterMode({required this.name, required this.isSelected});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FilterMode> filterList = [
    FilterMode(name: "All", isSelected: false),
    FilterMode(name: "Clothing", isSelected: false),
    FilterMode(name: "Accessories", isSelected: false),
    FilterMode(name: "Hats", isSelected: false),
    FilterMode(name: "Furniture", isSelected: false),
    FilterMode(name: "Beauty Items", isSelected: false),
    FilterMode(name: "Backpacks", isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,

        backgroundColor: Colors.white,
        leading: Image.asset("assets/images/drawer.png"),
        title: Image.asset("assets/images/appbar_logo.png"),
        centerTitle: true,
        actions: [
          Image.asset("assets/images/search.png"),
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filterList.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              filterList[index].isSelected = !filterList[index].isSelected;
                            });
                          },
                          child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5, color: filterList[index].isSelected ? Colors.red : Colors.grey), // Conditional border color
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(filterList[index].name)),
                        ),
                        const Positioned(top: 2, right: 2, child: BadgeCount()),
                      ],
                    );
                  },
                ),
              ),
              const Divider(color: Colors.grey),
              const StatusSections(),
              const Divider(color: Colors.grey),
              const ProductsSection(),
              const Divider(color: Colors.grey),
              const DiscountTile(),
            ],
          ),
        ),
      ),
    );
  }
}
