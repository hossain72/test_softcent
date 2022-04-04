import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shop_page_controller.dart';

class ShopPageView extends GetView<ShopPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ShopPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
