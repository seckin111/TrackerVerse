import 'package:flutter/material.dart';

import 'package:bitirme_projesi/screens/discover_screen/widgets/new_series_box_widget.dart';

class NewSeriesWidget extends StatelessWidget {
  const NewSeriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "New Series",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              MaterialButton(
                enableFeedback: true,
                onPressed: null,
                mouseCursor: SystemMouseCursors.click,
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              NewSeriesBox(
                seriesID: "1",
              ),
              NewSeriesBox(
                seriesID: "2",
              ),
              NewSeriesBox(
                seriesID: "3",
              ),
              NewSeriesBox(
                seriesID: "4",
              ),
              NewSeriesBox(
                seriesID: "5",
              ),
              NewSeriesBox(
                seriesID: "6",
              ),
              NewSeriesBox(
                seriesID: "7",
              ),
              NewSeriesBox(
                seriesID: "8",
              ),
              NewSeriesBox(
                seriesID: "9",
              ),
              NewSeriesBox(
                seriesID: "10",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
