import 'package:dio/dio.dart';

class TvShowsApi {
  final String apiKey =
      '2669a267c2d8a1f5da3e0f0b0e1d5bc8'; // API anahtarınızı buraya girin
  final String baseUrl = 'https://api.themoviedb.org/3';

// 1. Popüler ilk 10 dizinin ilk sayfasını getiren fonksiyon
  Future<List<dynamic>> getPopularTVShows() async {
    final String url =
        '$baseUrl/tv/popular?language=en-US&api_key=$apiKey&page=1&with_origin_country=US';

    try {
      final response = await Dio().get(url);
      if (response.statusCode == 200) {
        final results = response.data['results'];
        return results.sublist(0, 10); // İlk 10 diziyi döndürür
      } else {
        print('İstek sırasında bir hata oluştu.');
      }
    } catch (error) {
      print('Bağlantı hatası: $error');
    }

    return [];
  }

// 2. ID'si verilen dizinin detaylarını getiren fonksiyon
  Future<Map<String, dynamic>> getTVShowDetails(int tvShowId) async {
    final String url = '$baseUrl/tv/$tvShowId?api_key=$apiKey';

    try {
      final response = await Dio().get(url);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        print('İstek sırasında bir hata oluştu.');
      }
    } catch (error) {
      print('Bağlantı hatası: $error');
    }

    return {};
  }

// 3. İsmi girilen diziyi arama sonuçlarını getiren fonksiyon
  Future<List<dynamic>> searchTVShows({required String query}) async {
    final String url = '$baseUrl/search/tv?api_key=$apiKey&query=$query';

    try {
      print(url);
      final response = await Dio().get(url);
      if (response.statusCode == 200) {
        final results = response.data['results'];
        return results;
      } else {
        print('İstek sırasında bir hata oluştu.');
      }
    } catch (error) {
      print('Bağlantı hatası: $error');
    }

    return [];
  }

  Future<List<dynamic>> getCategoryTvShows(
      {required int seriesCategoryId}) async {
    final String url =
        '$baseUrl/discover/tv/?language=en-US&api_key=$apiKey&page=1&with_origin_country=US&sort_by=popularity.desc&with_genres=$seriesCategoryId';
    try {
      final response = await Dio().get(url);
      if (response.statusCode == 200) {
        final results = response.data['results'];
        return results;
      } else {
        print('İstek sırasında bir hata oluştu.');
      }
    } catch (error) {
      print('Bağlantı hatası: $error');
    }

    return [];
  }

  Future<List<dynamic>> getUpcomingTVShows() async {
    final String url =
        '$baseUrl/tv/on_the_air?language=en-US&api_key=$apiKey&page=1&with_origin_country=US';

    try {
      final response = await Dio().get(url);
      if (response.statusCode == 200) {
        final results = response.data['results'];
        return results;
      } else {
        print('İstek sırasında bir hata oluştu.');
      }
    } catch (error) {
      print('Bağlantı hatası: $error');
    }

    return [];
  }

  // Future<List<dynamic>> getCategoryTvShows(String category) async {
  //   print(category);
  //   final String url =
  //       '$baseUrl/tv/$category?language=en-US&api_key=$apiKey&page=1&with_origin_country=US';
  //   try {
  //     print(url);
  //     final response = await Dio().get(url);
  //     if (response.statusCode == 200) {
  //       final results = response.data['results'];
  //       return results;
  //     } else {
  //       print('İstek sırasında bir hata oluştu.');
  //     }
  //   } catch (error) {
  //     print('Bağlantı hatası: $error');
  //   }

  //   return [];
  // }
}
