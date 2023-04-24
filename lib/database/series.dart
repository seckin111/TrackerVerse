import 'package:isar/isar.dart';

part 'series.g.dart';

@Collection()
class Series {
  Id id = Isar.autoIncrement; // auto increment id.
  String? seriesName;
  String? seriesImageHorizontal;
  String? seriesImageVertical;
  String? seriesDescription;
  String? seriesGenre;
  String? seriesRating;
  int? serisCompletionPercentetion;
  List<String>? seriesSeasons;
}

@Collection()
class SeriesSeasons {
  Id id = Isar.autoIncrement; // auto increment id.
  String? seasonName;
  List<String>? seasonEpisodes;
}
