import 'dart:async';

import 'package:feed_app/models/user.dart';
import 'package:feed_app/utils/network_util.dart';

class RestDatasource {
  static final BASE_URL = "http://192.168.60.83:5000/";
  // static final LOGIN_URL = BASE_URL + "auth/signin";
  static final LOGIN_URL = "https://jsonplaceholder.typicode.com/posts";
  NetworkUtil _netUtil = new NetworkUtil();

  Future<User> login(String username, String password) {
    return _netUtil.post(LOGIN_URL,
        // body: {"email": username, "password": password},
        body: {"title": "Hello", "body": "body text", "userId": 1},
        headers: {"Content-type": "application/json"}).then((dynamic res) {
      print(res.toString());
      if (res["error"]) throw new Exception(res["error_msg"]);
      return new User.map(res["user"]);
    });
  }
}
