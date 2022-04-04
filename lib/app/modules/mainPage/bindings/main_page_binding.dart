import 'package:get/get.dart';
import 'package:test_softcent/app/modules/explorePage/controllers/explore_page_controller.dart';
import 'package:test_softcent/app/modules/home/controllers/home_controller.dart';
import 'package:test_softcent/app/modules/inboxPage/controllers/inbox_page_controller.dart';
import 'package:test_softcent/app/modules/shopPage/controllers/shop_page_controller.dart';

import '../controllers/main_page_controller.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPageController>(
      () => MainPageController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ExplorePageController>(
      () => ExplorePageController(),
    );
    Get.lazyPut<InboxPageController>(
      () => InboxPageController(),
    );
    Get.lazyPut<ShopPageController>(
      () => ShopPageController(),
    );
  }
}
