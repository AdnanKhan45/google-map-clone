
import 'package:flutter/material.dart';
import 'package:google_map_clone/features/app/theme/style.dart';

class SingleNearbyPlaceWidget extends StatelessWidget {
  final Function(String) onPlaceClickListener;
  final String place;
  final IconData icon;
  const SingleNearbyPlaceWidget({super.key, required this.onPlaceClickListener, required this.place, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPlaceClickListener(place);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 5, bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.4),
                blurRadius: 5.0,
                spreadRadius: 0.5,
                offset: const Offset(
                  0.0,
                  0.0,
                ),
              ),
            ]),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
              color: Colors.black87,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              place,
              style: const TextStyle(
                  fontSize: 13, fontWeight: FontWeight.w700, color: Colors.black87),
            )
          ],
        ),
      ),
    );
  }
}
