import 'package:flutter/material.dart';

import '../../api/series_api.dart';
import '../../utils/colors_utils.dart';
import 'widgets/category_series_card.dart';

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({
    Key? key,
    required this.seriesCategoryId,
    required this.seriesCategoryName,
  }) : super(key: key);

  final int seriesCategoryId;
  final String seriesCategoryName;

  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  List<dynamic> categoryTvShows = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadCategoryTVShows();
  }

  Future<void> loadCategoryTVShows() async {
    final response = await TvShowsApi().getCategoryTvShows(
      seriesCategoryId: widget.seriesCategoryId,
    );
    setState(
      () {
        categoryTvShows = response;
        isLoading = false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlue,
        title: Text(widget.seriesCategoryName),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : categoryTvShows.isNotEmpty
              ? ListView(
                  children: [
                    ...categoryTvShows.map(
                      (tvShow) => CategorySeriesCard(
                        backdrop: tvShow['backdrop_path'],
                        color: Colors.white,
                        date: tvShow['first_air_date'],
                        isMovie: false,
                        id: tvShow['id'],
                        name: tvShow['name'],
                        poster: tvShow['poster_path'],
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
