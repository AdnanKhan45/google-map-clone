
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_map_clone/features/app/theme/style.dart';

class TrackLocationButton extends StatelessWidget {
  final VoidCallback onTap;
  const TrackLocationButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: greyColor
                      .withOpacity(.4),
                  blurRadius: 5.0,
                  spreadRadius: 0.5,
                  offset: const Offset(
                    0.0,
                    0.0,
                  ),
                ),
              ]
          ),
          child: const Center(
            child: Icon(FontAwesomeIcons.locationCrosshairs, color: Colors.black87,),
          ),
        ),
      ),
    );
  }
}
