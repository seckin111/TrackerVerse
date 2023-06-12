import 'package:flutter/material.dart';

import '../episode_info_screen.dart';

class MyHeroWidget extends StatefulWidget {
  final String seriesID;
  const MyHeroWidget({super.key, required this.seriesID});

  @override
  State<MyHeroWidget> createState() => _MyHeroWidgetState();
}

class _MyHeroWidgetState extends State<MyHeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: widget.seriesID, child: EpisodeInfo(seriesID: widget.seriesID));
  }
}
