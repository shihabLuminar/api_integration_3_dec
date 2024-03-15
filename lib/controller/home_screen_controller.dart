import 'dart:convert';
import 'package:api_integration_3_dec/model/home_screen_models/api_res_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreenController with ChangeNotifier {
  ApiResModel apiResMode = ApiResModel();

  //function to call api
  Future<void> fetchData() async {
    //step 1
    final url = Uri.parse("https://api.publicapis.org/entries");
    //step 2
    final response = await http.get(url);
    //step 3
    if (response.statusCode == 200) {
// step 4 -
      final decodedResponse = jsonDecode(response.body);
      print(decodedResponse);
      apiResMode = ApiResModel.fromJson(decodedResponse);

      // step 5 - convert to model classs
    } else {
      print("failed");
    }
    notifyListeners();
  }
}
