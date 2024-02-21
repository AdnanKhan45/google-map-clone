
import 'package:flutter/material.dart';
import 'package:google_map_clone/features/app/global/widgets/search_widget.dart';
import 'package:google_map_clone/features/app/utils/utils.dart';
import 'package:google_map_clone/features/explore/presentation/widgets/change_map_type_button.dart';
import 'package:google_map_clone/features/explore/presentation/widgets/go_to_button.dart';
import 'package:google_map_clone/features/explore/presentation/widgets/nearby_paces/nearby_places_widget.dart';
import 'package:google_map_clone/features/explore/presentation/widgets/track_location_button.dart';
import 'package:google_map_clone/features/search/presentation/pages/search_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

CameraPosition globalPosition = const CameraPosition(target: LatLng(31.1234, 74.1234), zoom: 14);

class ExplorePage extends StatefulWidget {
  final int currentIndex;
  const ExplorePage({super.key, required this.currentIndex});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final TextEditingController _searchController = TextEditingController();
  GoogleMapController? mapController;
  FocusScopeNode focusNode = FocusScopeNode();

  double _slidingPosition = 0;
  double _buttonOpacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: globalPosition,
            mapToolbarEnabled: true,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            buildingsEnabled: true,
            onMapCreated: (controller) {
              setState(() {
                mapController = controller;
              });
            },
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchWidget(
                isShowCancel: false,
                loading: false,
                readOnly: true,
                onCancelTap: () {},
                controller: _searchController,
                isOutlined: PanelPositionUtils.isSlidingPanelOpen(_slidingPosition) ? true : false,
                focusNode: focusNode,
                onTapOutSide: (pointerDownEvent) {
                  focusNode.unfocus();
                },
                onTap: () {
                  Future.delayed(Duration.zero, () {
                    if(focusNode.hasFocus) {

                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => const SearchPage(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                          transitionDuration: const Duration(milliseconds: 100),
                        ),
                      );
                    }
                  });
                },
              ),

              if(widget.currentIndex == 0)
                NearbyPlacesWidget(
                    onComplete: (value) {},
                    onPlaceClickListener: (nearbyPlaces) {}
                ),

              ChangeMapTypeButton(onTap: () {})

            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TrackLocationButton(onTap: () {}),
              GoToButton(onTap: () {}),
            ],
          )

        ],
      ),
    );
  }
}
