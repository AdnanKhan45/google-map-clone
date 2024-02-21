

import 'package:flutter/material.dart';
import 'package:google_map_clone/features/app/global/widgets/button_container_widget.dart';
import 'package:google_map_clone/features/app/global/widgets/search_widget.dart';
import 'package:google_map_clone/features/app/theme/style.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> with SingleTickerProviderStateMixin {

  final TextEditingController _searchController = TextEditingController();
  TabController? _tabController;

  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);

  }
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SearchWidget(
          controller: _searchController,
          isOutlined: true,
        ),
        const SizedBox(
          height: 15,
        ),

        TabBar(
          controller: _tabController,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
          unselectedLabelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: greyColor,
          ),
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: primaryColor,
          ),
          tabs: const [
            Tab(
                text: "Following"
            ),
            Tab(
                text: "Notifications"
            ),
            Tab(
                text: "Messages"
            ),
          ],
        ),
        const SizedBox(height: 15),
        Expanded(
          child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      SizedBox(width: 210, height: 210,child: Image.asset("assets/images/aircraft_balloon.png", fit: BoxFit.fill,)),
                      const Text("Find people and places to follow", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black54),),
                      const Text("See what people are posting nearby, and follow them, to get updates on their latest reviews, photos and more", style: TextStyle(fontSize: 15, color: Colors.black54), textAlign: TextAlign.center,),
                      const SizedBox(height: 15),
                      ButtonContainerWidget(title: "Explore nearby posts", onTap: () {}),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      SizedBox(width: 210, height: 210,child: Image.asset("assets/images/aircraft_balloon.png", fit: BoxFit.fill,)),
                      const Text("No notifications yet", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black54),),
                      const Text("You have not received any notifications from businesses yet", style: TextStyle(fontSize: 15, color: Colors.black54), textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      SizedBox(width: 210, height: 210,child: Image.asset("assets/images/aircraft_balloon.png", fit: BoxFit.fill,)),
                      const Text("No messages yet", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black54),),
                      const Text("Contact businesses by tapping the 'Chat' button on their Google page", style: TextStyle(fontSize: 15, color: Colors.black54), textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ]
          ),
        )
      ],
    );
  }
}
