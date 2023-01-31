import 'package:bitirme_projesi/screens/home_screen/episode_info.dart';
import 'package:bitirme_projesi/utils/series_info.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String seriesID;
  SecondPage({required this.seriesID});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: widget.seriesID,
        child: EpisodeInfo(
          seriesImageVertical: "assets/series/breaking_bad_vertical.jpg",
          seriesImageHorizontal: "assets/series/breaking_bad.jpg",
          seriesTitle: "Breaking Bad",
          seriesGenre: "Crime, Drama, Thriller",
        ),
      ),
    );
  }
}
