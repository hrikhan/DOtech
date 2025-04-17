// lib/controllers/user_controller.dart
import 'dart:convert';
import 'package:dotech/model/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class UserController extends GetxController {
  var users = <User>[].obs;
  var isLoading = false;
  var errorMessage = ''.obs;

  
  Future<void> fetchUsers() async {
    try {
      isLoading = true;
      update(); 

      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        users.value = data.map((user) => User.fromJson(user)).toList();
        errorMessage('');
      } else {
        errorMessage('Failed to load data. Please try again.');
      }
    } catch (e) {
      errorMessage('An error occurred: $e');
    } finally {
      isLoading = false;
      update();
    }
  }
}
