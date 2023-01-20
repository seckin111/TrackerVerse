import 'package:bitirme_projesi/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import '../../utils/series_info.dart';
import '../profile_screen/widgets/rounded_check_box.dart';

class EpisodeInfo extends StatelessWidget {
  final String seriesImage;
  final String seriesTitle;
  final String seriesGenre;

  const EpisodeInfo({
    super.key,
    required this.seriesImage,
    required this.seriesTitle,
    required this.seriesGenre,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.4,
              child: Image.asset(
                seriesImage,
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
                              seriesImage,
                              height: 250,
                              width: 180,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              seriesTitle,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              seriesGenre,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: const Test(
                      seriesID: '1',
                    ),
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

class Test extends StatefulWidget {
  final String seriesID;
  const Test({required this.seriesID}); //DAHA SONRA KULLANILACAK

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  late int _selectedSeason;
  List<String> episodes = [];
  List<String> seasonEpisodesWidgets = [];

  _TestState() {
    _selectedSeason = 1;
    episodes.addAll(seriesList['1']!.seasons[1]!);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    for (int i = 1; i <= seriesList['1']!.seasons.length; i++)
                      Center(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _selectedSeason = i;
                              episodes.clear();
                              episodes.addAll(seriesList['1']!.seasons[i]!);
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Season $i",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: AppColors.black,
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
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Column(
                      children: [
                        for (int i = 0; i < episodes.length; i++)
                          ListTile(
                            title: Text(
                              episodes[i],
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 20,
                              ),
                            ),
                            trailing: RoundCheckbox(),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
