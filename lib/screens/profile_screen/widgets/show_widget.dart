import 'package:flutter/material.dart';

import '../../../utils/series_info.dart';
import 'my_hero_widget.dart';



class ImageWidget extends StatelessWidget {
  final String seriesID;
  const ImageWidget({super.key, required this.seriesID});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
      ),
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: (() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => MyHeroWidget(
                seriesID: seriesID,
              ),
            ),
          );
        }),
        child: Hero(
          tag: seriesID,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  seriesList[seriesID]!.seriesImageVertical,
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
                        const Color.fromARGB(151, 0, 0, 0),
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
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
                      '${seriesList[seriesID]!.serisCompletionPercentetion}%',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 54.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      seriesList[seriesID]!.seriesName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
