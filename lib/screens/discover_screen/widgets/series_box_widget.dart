import 'package:flutter/material.dart';

import '../../../../utils/colors_utils.dart';
import '../../category_filter_screen/widgets/star_display.dart';
import 'series_detail_screen.dart';

class NewSeriesBox extends StatelessWidget {
  final String tvShowName, tvShowImage, tvShowRating;
  final int tvShowId;

  const NewSeriesBox({
    Key? key,
    required this.tvShowId,
    required this.tvShowName,
    required this.tvShowImage,
    required this.tvShowRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SeriesPage(
              tvShowId: tvShowId,
            ),
          ),
        );
      },
      child: Container(
        width: 190,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: AppColors.primaryBlue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryBlue.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                tvShowImage,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tvShowName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "None Genres",
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      IconTheme(
                        data: const IconThemeData(
                          color: Colors.cyanAccent,
                          size: 20,
                        ),
                        child: StarDisplay(
                          // value: int.parse(tvShowRating) * 5 ~/ 10,
                          value:
                              ((double.parse(tvShowRating) * 5) / 10).round(),
                        ),
                      ),
                      Text(
                        "  $tvShowRating/10",
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
          ],
        ),
      ),
    );
  }
}
