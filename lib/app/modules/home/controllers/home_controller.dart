import 'package:get/get.dart';

import 'package:test_softcent/app/data/models/mobile_model.dart';
import 'package:test_softcent/app/modules/home/providers/mobile_provider.dart';

class HomeController extends GetxController {
  final loading = false.obs;
  final mobileList = <Product>[].obs;

  @override
  void onInit() async {
    super.onInit();
    await getMobileList();
    print("adata");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  getMobileList() async {
    try {
      loading(true);
      var mobiles = await MobileProvider().getMobileList();
      if (mobiles != null) {
        mobileList.clear();
        if (mobiles.products.isNotEmpty) {
          mobileList.addAll(mobiles.products);
          update();
        }
      }
    } finally {
      loading(false);
      update();
    }
  }
}
