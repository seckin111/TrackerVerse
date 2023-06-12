import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../api/series_api.dart';
import '../../../../utils/colors_utils.dart';
import '../../category_filter_screen/widgets/star_display.dart';
import 'recommend_field.dart';
import 'series_page_buttons_widget.dart';

class SeriesPage extends StatefulWidget {
  final int tvShowId;

  const SeriesPage({Key? key, required this.tvShowId}) : super(key: key);

  @override
  State<SeriesPage> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> {
  Map<String, dynamic> tvShowDetails = {};
  bool isLoading = true;
  double voteAverage = 0;

  @override
  void initState() {
    super.initState();
    getTVShowDetails();
  }

  Future<void> getTVShowDetails() async {
    final response = await TvShowsApi().getTVShowDetails(widget.tvShowId);
    setState(() {
      tvShowDetails = response;
      voteAverage = tvShowDetails['vote_average'].toDouble();
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryBlue,
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : Stack(
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://image.tmdb.org/t/p/w200${tvShowDetails['backdrop_path']}',
                      height: 280,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      placeholderFadeInDuration:
                          const Duration(milliseconds: 500),
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error), // Display an error icon
                    ),
                  ),
                  SingleChildScrollView(
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.fourthBlue
                                                .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 8,
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              'https://image.tmdb.org/t/p/w200${tvShowDetails['poster_path']}',
                                          height: 250,
                                          width: 180,
                                          fit: BoxFit.cover,
                                          placeholderFadeInDuration:
                                              const Duration(milliseconds: 500),
                                          placeholder: (context, url) => isLoading
                                              ? const Center(
                                                  child:
                                                      CircularProgressIndicator())
                                              : Container(),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 140, 0, 0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            isLoading
                                                ? ''
                                                : tvShowDetails['name'],
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            (isLoading
                                                ? ''
                                                : tvShowDetails['genres']
                                                    .map((genre) =>
                                                        genre['name'])
                                                    .join(', ')),
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(right: 40, top: 30),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: AppColors.fourthBlue,
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.fourthBlue
                                            .withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          const SeriesPageButtons(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  isLoading ? '' : tvShowDetails['name'],
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  isLoading ? '' : tvShowDetails['overview'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    IconTheme(
                                      data: const IconThemeData(
                                        color: Colors.cyanAccent,
                                        size: 20,
                                      ),
                                      child: StarDisplay(
                                        value: ((voteAverage * 5) / 10).round(),
                                      ),
                                    ),
                                    Text(
                                      "  $voteAverage/10",
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white70,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  isLoading
                                      ? ''
                                      : tvShowDetails['first_air_date'],
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const RecommendWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
