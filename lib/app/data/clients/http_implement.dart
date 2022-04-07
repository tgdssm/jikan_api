import 'dart:convert';
import 'package:jikan_api/app/data/clients/my_http_service.dart';
import 'package:http/http.dart' as http;

class HttpImplement implements MyHttpService {

  @override
  Future<dynamic> get(String url) async {
    final uri = Uri.parse(url);
    final result = await http.get(uri);
    if(result.statusCode == 200) {
      return jsonDecode(result.body);
    } else {
      return null;
    }
  }

}