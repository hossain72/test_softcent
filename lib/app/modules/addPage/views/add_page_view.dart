import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_page_controller.dart';

class AddPageView extends GetView<AddPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
