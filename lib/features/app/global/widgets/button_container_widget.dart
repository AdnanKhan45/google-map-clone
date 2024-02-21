
import 'package:flutter/material.dart';
import 'package:google_map_clone/features/app/theme/style.dart';

class ButtonContainerWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final IconData? icon;
  const ButtonContainerWidget({super.key, this.onTap, required this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: icon == null ? Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: primaryColorLight
        ),
        child: Text(title, style: const TextStyle(fontWeight: FontWeight.w500, color: whiteColor),)
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: primaryColorLight
            ),
            child: Row(
              children: [
                Icon(icon, size: 15, color: whiteColor,),
                const SizedBox(width: 5,),
                Text(title, style: const TextStyle(fontWeight: FontWeight.w500, color: whiteColor),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
