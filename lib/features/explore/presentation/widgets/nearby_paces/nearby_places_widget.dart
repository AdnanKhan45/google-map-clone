
import 'package:flutter/material.dart';
import 'package:google_map_clone/features/app/const/nearby_places_const.dart';

import 'widgets/single_nearby_place_widget.dart';

class NearbyPlacesWidget extends StatelessWidget {
  final Function(String) onPlaceClickListener;
  final Function(bool) onComplete;
  const NearbyPlacesWidget({super.key, required this.onPlaceClickListener, required this.onComplete});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: 45,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: NearbyPlacesIconsConst.nearbyPlacesIcons.length,
          itemBuilder: (context, index) {
            IconData singlePlaceIcon =
            NearbyPlacesIconsConst.nearbyPlacesIcons[index];
            String singlePlaceText =
            NearbyPlacesConst.nearbyPlacesTexts[index];
            return SingleNearbyPlaceWidget(
                onPlaceClickListener: (place) {
                  onPlaceClickListener(place);
                },
                place: singlePlaceText,
                icon: singlePlaceIcon
            );
          }),
    );
  }
}
