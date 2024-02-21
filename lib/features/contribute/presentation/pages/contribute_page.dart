

import 'package:flutter/material.dart';
import 'package:google_map_clone/features/app/global/widgets/search_widget.dart';
import 'package:google_map_clone/features/app/theme/style.dart';
import 'package:google_map_clone/features/save/presentation/widgets/save_bottom_item.dart';

class ContributePage extends StatefulWidget {
  const ContributePage({super.key});

  @override
  State<ContributePage> createState() => _ContributePageState();
}

class _ContributePageState extends State<ContributePage> {

  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchWidget(
            controller: _searchController,
            isOutlined: true,
          ),

          const SizedBox(height: 25,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Username John Doe", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                const SizedBox(height: 10,),
                Text("View your profile", style: TextStyle(fontSize: 18, color: primaryColor, fontWeight: FontWeight.bold),),
                const SizedBox(height: 15,),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SaveBottomItem(
                      icon: Icons.edit,
                      title: "Edit map",
                    ),
                    SaveBottomItem(
                      icon: Icons.add_location_alt_outlined,
                      title: "Add place",
                    ),
                    SaveBottomItem(
                      icon: Icons.rate_review_outlined,
                      title: "Write review",
                    ),
                    SaveBottomItem(
                      icon: Icons.add_a_photo_outlined,
                      title: "Add a photo",
                    ),
                  ],
                ),

                const SizedBox(height: 20,),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: greyColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      SizedBox(width: 210, height: 210,child: Image.asset("assets/images/aircraft_balloon.png", fit: BoxFit.fill,)),
                      const SizedBox(height: 10,),
                      const Text("Keep going", style: TextStyle(fontSize: 20),),
                      const SizedBox(height: 5,),
                      const Text("There are may ways to contribute on Google Maps. Try something new as you go for the next level.", textAlign: TextAlign.center,),
                      const SizedBox(height: 20,),
                      TextButton(onPressed: () {}, child: Text("Contribute now", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: primaryColor),),)
                    ],
                  ),
                ),

                const SizedBox(height: 30,),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
