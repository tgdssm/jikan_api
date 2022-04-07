import 'package:dio/dio.dart';
import 'package:jikan_api/app/data/clients/my_http_service.dart';

class DioImplement implements MyHttpService {
  final dio = Dio();

  @override
  Future<dynamic> get(String url) async {
    final result = await dio.get(url);
    if(result.statusCode == 200) {
      return result.data;
    } else {
      return null;
    }
  }

}