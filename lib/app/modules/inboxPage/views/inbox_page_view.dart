import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/inbox_page_controller.dart';

class InboxPageView extends GetView<InboxPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InboxPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InboxPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
