import 'package:dio/dio.dart';
import 'package:movie_search/model/api/api_constants.dart';
import 'package:movie_search/model/data/movie_by_id_model.dart';
import 'package:movie_search/model/data/movie_search_model.dart';

class ApiRequest {
  static Dio dio = Dio();
  static Future<MovieSearchModel?> searchMovieByName(String movieName,
      [int page = 1, int limit = 100]) async {
    Response response = await dio.get(
      ApiConstants.searchUrl,
      queryParameters: {'page': page, 'limit': limit, 'query': movieName},
      options: Options(headers: {
        "accept": "application/json",
        //ZZ21S4A-HD74ZE7-M3XB5AW-BEBB8AT
        'X-API-KEY': 'ZZ21S4A-HD74ZE7-M3XB5AW-BEBB8AT',
      }),
    );
    if (response.statusCode == 200) {
      MovieSearchModel movieSearchModel =
          MovieSearchModel.fromJson(response.data);
      return movieSearchModel;
    } else {
      return null;
    }
  }

  static Future<MovieByIdModel?> searchMovieById(int id) async {
    Response response = await dio.get(
      '${ApiConstants.searchUrlForUd}$id',
      // queryParameters: {'id': id},
      options: Options(headers: {
        "accept": "application/json",
        'X-API-KEY': 'ZZ21S4A-HD74ZE7-M3XB5AW-BEBB8AT',
      }),
    );
    if (response.statusCode == 200) {
      MovieByIdModel movieSearchModel = MovieByIdModel.fromJson(response.data);
      return movieSearchModel;
    } else {
      return null;
    }
  }
}
