import 'package:jikan_api/app/data/clients/my_http_service.dart';
import 'package:jikan_api/app/data/models/anime_model.dart';
import 'dart:developer' as dev;

const baseUrl = 'https://api.jikan.moe/v4/anime/';

class RequestAPI {
  late MyHttpService myHttpService;
  RequestAPI({required this.myHttpService});

  Future<List<AnimeModel>> fetchAnimes() async{
    List<AnimeModel> animes = <AnimeModel>[];
    final response = await myHttpService.get(baseUrl);
    if(response != null) {
      response['data'].forEach((element){
        animes.add(AnimeModel.fromJson(element as Map<String, dynamic>));
      });
    }
    return animes;
  }

  Future<AnimeModel> fetchAnimeById(int id) async {
    late AnimeModel anime;
    final response = await myHttpService.get(baseUrl + id.toString());
    if(response != null) {
      anime = AnimeModel.fromJson(response['data'] as Map<String, dynamic>);
    }
    return anime;
  }

}