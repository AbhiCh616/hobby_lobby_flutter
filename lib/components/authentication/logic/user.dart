// ignore: import_of_legacy_library_into_null_safe
import 'dart:convert';

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

createUser(String email, String password, String username) async {
  String url = 'http://192.168.43.161:8000/api/accounts/create/';
  var headers = {'Content-Type': 'application/json'};
  var body =
      jsonEncode({'email': email, 'password': password, 'username': username});

  var response = await http.post(url, headers: headers, body: body);

  if (response.statusCode == 201) {
    var data = jsonDecode(response.body);
    // Create storage
    final storage = new FlutterSecureStorage();
    // Write value
    await storage.write(key: 'token', value: data['token']);

    // Debug messages
    var token = await storage.read(key: 'token');
    print('User created with token: $token');
  } else {
    print(
        'Can\'t create user: ${response.statusCode}, sent body: $body, error body: ${response.body}');
  }
}

logIn(String email, String password) async {
  var url = 'http://192.168.43.161:8000/api/accounts/login/';
  var headers = {'Content-Type': 'application/json'};
  var body = jsonEncode({'username': email, 'password': password});

  var response = await http.post(url, headers: headers, body: body);

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    // Create storage
    final storage = new FlutterSecureStorage();
    // Write value
    await storage.write(key: 'token', value: data['token']);

    // Debug messages
    var token = await storage.read(key: 'token');
    print('User logged in with token: $token');
  } else {
    print(
        'Can\'t login user: ${response.statusCode}, sent body: $body, error body: ${response.body}');
  }
}

Future<bool> isLoggedIn() async {
  final storage = new FlutterSecureStorage();
  bool isLoggedIn = await storage.containsKey(key: 'token');

  // Debug messages
  if (isLoggedIn) {
    print('User is logged in.');
  } else {
    print('User is not logged in.');
  }

  return isLoggedIn;
}

logOut() async {
  // Delete token
  final storage = new FlutterSecureStorage();
  await storage.delete(key: 'token');
}
