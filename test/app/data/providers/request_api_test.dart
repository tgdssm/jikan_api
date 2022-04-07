import 'package:jikan_api/app/data/clients/dio_implement.dart';
import 'package:jikan_api/app/data/clients/http_implement.dart';
import 'package:jikan_api/app/data/models/anime_model.dart';
import 'package:jikan_api/app/data/providers/request_api.dart';
import 'package:test/test.dart';

void main() {
  final request = RequestAPI(myHttpService: HttpImplement());
  
  test('Deve retornar uma lista de AnimeModel', ()async{
      expect(await request.fetchAnimes(), isA<List<AnimeModel>>());
      expect(await request.fetchAnimes(), isNotNull);
  });
  
  test('Deve retornar um AnimeModel', ()async{
    expect(await request.fetchAnimeById(1), isA<AnimeModel>());
    expect(await request.fetchAnimes(), isNotNull);
  });
}