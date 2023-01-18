import 'package:flutter/material.dart';

import '../../../utils/series_info.dart';

class ImageWidget extends StatelessWidget {
  final String seriesID;
  const ImageWidget({required this.seriesID});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              seriesList[seriesID]!.seriesImageHorizontal,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(151, 0, 0, 0),
                    Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  seriesList[seriesID]!.serisCompletionPercentetion.toString() +
                      '%',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 54.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  seriesList[seriesID]!.seriesName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
