import 'package:flutter/material.dart';

import '../../api/series_api.dart';
import '../../utils/colors_utils.dart';
import '../category_filter_screen/widgets/category_series_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.query});
  final String query;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<dynamic> searchTvShows = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getTvShows();
  }

  Future<void> getTvShows() async {
    final response = await TvShowsApi().searchTVShows(
      query: widget.query,
    );
    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      searchTvShows = response;
      print(searchTvShows);
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlue,
        title: Text(widget.query),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : searchTvShows.isNotEmpty
              ? ListView(
                  children: [
                    ...searchTvShows.map(
                      (tvShow) => CategorySeriesCard(
                        backdrop: tvShow['backdrop_path'] ?? '',
                        color: Colors.white,
                        date: tvShow['first_air_date'],
                        isMovie: false,
                        id: tvShow['id'],
                        name: tvShow['name'],
                        poster: tvShow['poster_path'] ?? '',
                        rate: tvShow['vote_average'].toDouble(),
                      ),
                    ),
                  ],
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
    );
  }
}
