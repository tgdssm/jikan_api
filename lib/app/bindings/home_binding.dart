import 'package:get/get.dart';
import 'package:jikan_api/app/controllers/home_controller.dart';
import 'package:jikan_api/app/data/clients/dio_implement.dart';
import 'package:jikan_api/app/data/repositories/home_repository.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController(homeRepository: HomeRepository(myHttpService: DioImplement())));
  }

}