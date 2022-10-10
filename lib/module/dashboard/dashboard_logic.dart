import 'package:dioapiproject/services/dashboard_services.dart';
import 'package:get/get.dart';

import '../../model/dashboard_model.dart';

class DashboardLogic extends GetxController {

  RxList<DashboardModel> post = RxList();

  //var controller_key = DashboardLogic();

  var url = 'https://fakestoreapi.com/products';

  getPost() async {
    var response = await DioServices().getMethod(url: url);

    if(response.statusCode == 200){
      response.data.forEach((element){
        post.add(DashboardModel.formJson(element));
      });
    }
  }

  @override
  void onInit() {
    getPost();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
