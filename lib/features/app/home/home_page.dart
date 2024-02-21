

import 'package:flutter/material.dart';
import 'package:google_map_clone/features/app/bottom_navbar/bottom_navbar.dart';
import 'package:google_map_clone/features/contribute/presentation/pages/contribute_page.dart';
import 'package:google_map_clone/features/explore/presentation/pages/explore_page.dart';
import 'package:google_map_clone/features/save/presentation/pages/saved_page.dart';
import 'package:google_map_clone/features/update/presentation/pages/update_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          }
      ),
      body: _switchPageOnIndex(currentIndex),
    );
  }

  _switchPageOnIndex(int index) {
    switch(index) {
      case 0: {
        return const ExplorePage(currentIndex: 0);
      }
      case 1: {
        return const ExplorePage(currentIndex: 1);
      }
      case 2: {
        return const SavedPage();
      }
      case 3: {
        return const ContributePage();
      }
      case 4: {
        return const UpdatePage();
      }
    }
  }
}
