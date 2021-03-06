import 'package:get/get.dart';

class LoginTranslate {
  static const _INITIAL = 'home';

  static const _APP_BAR = '$_INITIAL-app-bar';
  static String get appBar => _APP_BAR.tr;

  static const _USER_PASSWORD_WRONG_SNACKBAR =
      '$_INITIAL-user-password-wrong-snackbar';
  static String get userPasswordWrongSnackbar =>
      _USER_PASSWORD_WRONG_SNACKBAR.tr;

  static Map<String, String> translateID = {
    _APP_BAR: 'Selamat datang di Login',
    _USER_PASSWORD_WRONG_SNACKBAR: 'Nama pengguna dan/atau kata sandi salah!'
  };

  static Map<String, String> translateEN = {
    _APP_BAR: 'Welcome to Login',
    _USER_PASSWORD_WRONG_SNACKBAR: 'User and/or password wrongs!!'
  };
}
