import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../data/models/mobile_model.dart';

class MobileProvider extends GetConnect {
  getMobileList() async {
    final response = await http.get(
        Uri.parse('https://mocki.io/v1/02e91d9f-4d8c-4eb4-a4f9-bb4a60ffdaf9'));

    if (response.statusCode == 200) {
      var responseString = response.body;
      return mobileModelFromJson(responseString);
    }
  }
}
