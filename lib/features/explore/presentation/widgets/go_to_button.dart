
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_map_clone/features/app/theme/style.dart';

class GoToButton extends StatelessWidget {
  final VoidCallback onTap;
  const GoToButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              color: primaryColorLight,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: primaryColorLight
                  !.withOpacity(.4),
                  blurRadius: 10.0,
                  spreadRadius: 0.5,
                  offset: const Offset(
                    0.0,
                    0.0,
                  ),
                ),
              ]
          ),
          child: const Center(
            child: Icon(FontAwesomeIcons.diamondTurnRight, color: whiteColor,),
          ),
        ),
      ),
    );
  }
}
