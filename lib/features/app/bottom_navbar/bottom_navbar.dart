
import 'package:flutter/material.dart';
import 'package:google_map_clone/features/app/bottom_navbar/widgets/bottom_navbar_item.dart';
import 'package:google_map_clone/features/app/theme/style.dart';

class BottomNavbar extends StatefulWidget {
  int currentIndex;
  final Function(int) onTap;
  BottomNavbar({super.key, required this.currentIndex, required this.onTap});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  void updateIndex(int index) {
    setState(() {
      widget.currentIndex = index;
      widget.onTap(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: bottomNavColor,
      ),
      child: Row(
        children: List.generate(
          5,
              (index) => BottomNavbarItem(
            label: _bottomNavigationBarLabels[index],
            icon: _bottomNavigationBarIcons[index],
            isSelected: widget.currentIndex == index,
            onTap: () => updateIndex(index),
          ),
        ),
      ),
    );
  }


  final List<String> _bottomNavigationBarLabels = [
    "Explore",
    "Go",
    "Saved",
    "Contribute",
    "Updates",
  ];

  final List<IconData> _bottomNavigationBarIcons = [
    Icons.location_on,
    Icons.directions_bus_rounded,
    Icons.bookmark_border,
    Icons.add_circle_outline,
    Icons.notifications_none_rounded,
  ];

}
