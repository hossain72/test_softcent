import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import '../providers/mobile_provider.dart';

import '../../../data/models/mobile_model.dart';

class ExplorePageController extends GetxController {
  final searchController = TextEditingController();
  final loading = false.obs;
  final mobileList = <Product>[].obs;

  @override
  void onInit() async {
    super.onInit();
    await getMobileList();
  }

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
