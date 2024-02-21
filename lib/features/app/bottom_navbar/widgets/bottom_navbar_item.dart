
import 'package:flutter/material.dart';
import 'package:google_map_clone/features/app/theme/style.dart';

class BottomNavbarItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  const BottomNavbarItem({super.key,
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Column(
          children: [
            AnimatedContainer(
              width: isSelected ? 80 : 30,
              height: 35,
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                color: isSelected ? Colors.blue.withOpacity(.3) : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(icon, size: 25, color: isSelected ? primaryColor : Colors.black87),
            ),
            const SizedBox(height: 5,),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? primaryColor : Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}