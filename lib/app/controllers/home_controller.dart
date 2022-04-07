import 'package:get/get.dart';
import 'package:jikan_api/app/data/repositories/home_repository.dart';

class HomeController extends GetxController {
  late final HomeRepository _homeRepository;

  HomeController({required HomeRepository homeRepository}){
   _homeRepository =  homeRepository;
  }

  Future<void> printAnimesData() async {
    _homeRepository.readAllAnimes();
  }
}