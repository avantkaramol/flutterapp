import 'package:feed_app/data/rest_ds.dart';

import 'package:feed_app/models/user.dart';

abstract class LoginScreenContract {
  void onLoginSuccess(User user);
  void onLoginError(String errorTxt);
}

class LoginScreenPresenter {
  LoginScreenContract _view;
  LoginScreenPresenter(this._view);
  RestDatasource api = new RestDatasource();
  doLogin(String username, String password) {
    print(username);
    api.login(username, password).then((User user) {
      _view.onLoginSuccess(user);
    }).catchError((Object error) {
      print(error);
      // _view.onLoginError(error.toString());
    });
  }
}
