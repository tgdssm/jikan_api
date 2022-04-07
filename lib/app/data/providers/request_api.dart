import 'package:jikan_api/app/data/providers/my_http_client.dart';

const baseUrl = 'https://api.jikan.moe/v4/anime';

class RequestAPI implements MyHttpClient{
  late MyHttpClient myHttpClient;
  RequestAPI({required this.myHttpClient});

  @override
  Future get(String url) async{
    myHttpClient.get(baseUrl);
    throw UnimplementedError();
  }

}