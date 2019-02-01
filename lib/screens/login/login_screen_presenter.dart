import 'package:maxfit/data/rest_ds.dart';
import 'package:maxfit/model/user.dart';
import 'package:maxfit/data/database_helper.dart';

abstract class LoginScreenContract {
  void onLoginSuccess(User user);
  void onLoginError(String errorTxt);
}

class LoginScreenPresenter {
  LoginScreenContract _view;
  RestDatasource api = new RestDatasource();
  LoginScreenPresenter(this._view);

  doLogin(String username, String password) async {
    api.login(username, password).then((User user) {
      processLoginSuccess(user);
    }).catchError((Exception error) => _view.onLoginError(error.toString()));
  }

  void processLoginSuccess(User user) async {
      var db = new DatabaseHelper();
      await db.saveUser(user);
      _view.onLoginSuccess(user);
  }
}
