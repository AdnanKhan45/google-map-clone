

import 'package:flutter/material.dart';

class SaveListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onMenuTapListener;
  final VoidCallback onTap;
  final Color iconColor;
  const SaveListItem({super.key, required this.icon, required this.title, required this.subtitle, this.onMenuTapListener, required this.onTap, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          ListTile(
            leading: Icon(icon, size: 30, color: iconColor,),
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: GestureDetector(onTap: onMenuTapListener,child: const Icon(Icons.more_vert, size: 28,)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          ),
          const SizedBox(height: 5,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(color: Colors.grey,),
          )
        ],
      ),
    );
  }
}
