import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../utils/colors_utils.dart';
import '../../discover_screen/widgets/series_detail_screen.dart';
import 'star_display.dart';

class CategorySeriesCard extends StatelessWidget {
  final String poster;
  final String name;
  final String backdrop;
  final String date;
  final double rate;
  final int id;
  final Color color;
  final bool isMovie;
  const CategorySeriesCard({
    Key? key,
    required this.poster,
    required this.name,
    required this.backdrop,
    required this.date,
    required this.id,
    required this.color,
    required this.isMovie,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => SeriesPage(
                tvShowId: id,
              ),
            ),
          );

          // if (isMovie) {
          //   pushNewScreen(
          //     context,
          //     MovieDetailsScreen(
          //       id: id,
          //       backdrop: backdrop,
          //     ),
          //   );
          // } else {
          //   pushNewScreen(
          //     context,
          //     TvShowDetailScreen(
          //       backdrop: backdrop,
          //       id: id,
          //     ),
          //   );
          // }
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(boxShadow: kElevationToShadow[8]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: 9 / 14,
                    child: CachedNetworkImage(
                      // imageUrl: poster,
                      imageUrl: "https://image.tmdb.org/t/p/w200$poster",
                      fit: BoxFit.cover,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Container(
                        color: AppColors.white,
                        child: Center(
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),  
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(   
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )
                        // style: normalText.copyWith(
                        //   fontSize: 18,
                        //   fontWeight: FontWeight.bold,
                        //   color: color,
                        // ),
                        ),
                    const SizedBox(height: 8),
                    Text(
                      date,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: Colors.white70,
                      ),
                      // style: normalText.copyWith(
                      //   fontSize: 14,
                      //   fontWeight: FontWeight.w900,
                      //   color: color.withOpacity(.8),
                      // ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        IconTheme(
                          data: const IconThemeData(
                            color: Colors.cyanAccent,
                            size: 20,
                          ),
                          child: StarDisplay(
                            value: ((rate * 5) / 10).round(),
                          ),
                        ),
                        Text(
                          "  $rate/10",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.white70,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
