import 'package:flutter/material.dart';
import 'package:google_map_clone/features/app/theme/style.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;

  const SplashScreen({super.key, this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 2000), () {
      if(mounted) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => widget.child!),
                (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashBgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          SizedBox(
            width: 150,
            height: 150,
            child: Image.asset(
              "assets/images/app_logo.png",

            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 80.0),
            width: 150,
            height: 150,
            child: Image.asset(
              "assets/images/google_transparent_logo.png",
            ),
          ),
        ],
      ),
    );
  }
}
