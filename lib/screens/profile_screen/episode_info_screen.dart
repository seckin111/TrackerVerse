import 'package:flutter/material.dart';

import 'package:bitirme_projesi/screens/profile_screen/widgets/rounded_check_box.dart';
import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:bitirme_projesi/utils/series_info.dart';

class EpisodeInfo extends StatefulWidget {
  final String seriesID;
  const EpisodeInfo({super.key, required this.seriesID});

  @override
  State<EpisodeInfo> createState() => _EpisodeInfoState();
}

class _EpisodeInfoState extends State<EpisodeInfo> {
  @override
  int _selectedSeason = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.4,
              child: Image.asset(
                seriesList[widget.seriesID]!.seriesImageHorizontal,
                height: 280,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white70,
                            size: 30,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.white70,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.fourthBlue.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              seriesList[widget.seriesID]!.seriesImageVertical,
                              height: 250,
                              width: 180,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              seriesList[widget.seriesID]!.seriesName,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              seriesList[widget.seriesID]!.seriesGenre,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: [
                                for (int i = 1;
                                    i <=
                                        seriesList[widget.seriesID]!
                                            .seasons
                                            .length;
                                    i++)
                                  Center(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          _selectedSeason = i;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: _selectedSeason == i
                                              ? AppColors.fourthBlue
                                              : AppColors.primaryBlue,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            'Season $i',
                                            style: TextStyle(
                                              color: _selectedSeason == i
                                                  ? Colors.white
                                                  : AppColors.fourthBlue,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Column(
                                children: [
                                  for (int i = 0;
                                      i <
                                          seriesList[widget.seriesID]!
                                              .seasons[_selectedSeason]!
                                              .length;
                                      i++)
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            seriesList[widget.seriesID]!
                                                .seasons[_selectedSeason]![i],
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const RoundCheckbox(),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
