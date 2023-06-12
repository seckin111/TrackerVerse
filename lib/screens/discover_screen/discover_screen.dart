import 'package:flutter/material.dart';

import '../../../api/series_api.dart';
import '../../../utils/colors_utils.dart';
import 'widgets/series_box_widget.dart';
import 'widgets/upcoming_widget.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  List<dynamic> popularTvShows = [];

  List<dynamic> upcomingTvShows = [];

  @override
  void initState() {
    super.initState();
    loadPopularTVShows();
    loadUpcomingNews();
  }

  Future<void> loadPopularTVShows() async {
    final response = await TvShowsApi().getPopularTVShows();
    setState(() {
      popularTvShows = response;
    });
  }

  Future<void> loadUpcomingNews() async {
    final response = await TvShowsApi().getUpcomingTVShows();
    setState(() {
      upcomingTvShows = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGround,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          "Discover",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.primaryBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.white54,
                      size: 30,
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(left: 5, bottom: 8),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming TV Shows",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    // MaterialButton(
                    //   enableFeedback: true,
                    //   onPressed: null,
                    //   mouseCursor: SystemMouseCursors.click,
                    //   child: Text(
                    //     "See All",
                    //     style: TextStyle(
                    //       color: Colors.white54,
                    //       fontSize: 16,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: upcomingTvShows.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final upTvShows = upcomingTvShows[index];
                    return UpcomingWidget(
                      imgUrl:
                          'https://image.tmdb.org/t/p/w200${upTvShows['backdrop_path']}',
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular TV Shows",
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
              SizedBox(
                height: 310,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: popularTvShows.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final tvShow = popularTvShows[index];
                    return NewSeriesBox(
                      tvShowId: tvShow['id'],
                      tvShowName: tvShow['name'],
                      tvShowImage:
                          'https://image.tmdb.org/t/p/w200${tvShow['poster_path']}',
                      tvShowRating: tvShow['vote_average'].toString(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
