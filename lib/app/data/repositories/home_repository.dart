import 'package:jikan_api/app/data/clients/my_http_service.dart';
import 'package:jikan_api/app/data/models/anime_model.dart';
import 'package:jikan_api/app/data/providers/request_api.dart';

class HomeRepository {
  late final MyHttpService myHttpService;
  late final RequestAPI _requestApi;

  HomeRepository({required this.myHttpService}) {
    _requestApi = RequestAPI(myHttpService: myHttpService);
  }

  Future<List<AnimeModel>> readAllAnimes() async{
    return _requestApi.fetchAnimes();
  }

}