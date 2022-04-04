import 'package:get/get.dart';

import 'package:test_softcent/app/modules/addPage/bindings/add_page_binding.dart';
import 'package:test_softcent/app/modules/addPage/views/add_page_view.dart';
import 'package:test_softcent/app/modules/explorePage/bindings/explore_page_binding.dart';
import 'package:test_softcent/app/modules/explorePage/views/explore_page_view.dart';
import 'package:test_softcent/app/modules/home/bindings/home_binding.dart';
import 'package:test_softcent/app/modules/home/views/home_view.dart';
import 'package:test_softcent/app/modules/inboxPage/bindings/inbox_page_binding.dart';
import 'package:test_softcent/app/modules/inboxPage/views/inbox_page_view.dart';
import 'package:test_softcent/app/modules/mainPage/bindings/main_page_binding.dart';
import 'package:test_softcent/app/modules/mainPage/views/main_page_view.dart';
import 'package:test_softcent/app/modules/shopPage/bindings/shop_page_binding.dart';
import 'package:test_softcent/app/modules/shopPage/views/shop_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_PAGE,
      page: () => MainPageView(),
      binding: MainPageBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE_PAGE,
      page: () => ExplorePageView(),
      binding: ExplorePageBinding(),
    ),
    GetPage(
      name: _Paths.INBOX_PAGE,
      page: () => InboxPageView(),
      binding: InboxPageBinding(),
    ),
    GetPage(
      name: _Paths.SHOP_PAGE,
      page: () => ShopPageView(),
      binding: ShopPageBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PAGE,
      page: () => AddPageView(),
      binding: AddPageBinding(),
    ),
  ];
}
