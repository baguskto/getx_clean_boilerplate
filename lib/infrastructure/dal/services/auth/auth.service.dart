import '/domain/core/exceptions/default.exception.dart';
import '/domain/core/exceptions/user_not_found.exception.dart';
import '/infrastructure/translate/login.translate.dart';
import 'package:get/get.dart';

import 'package:get/get_connect/connect.dart';

import 'dto/authenticate_user.body.dart';
import 'dto/authenticate_user.response.dart';

class AuthService {
  final _connect = Get.find<GetConnect>();
  String get _prefix => 'oauth';

  Future<AuthenticateUserResponse> authenticateUser(
    AuthenticateUserBody body,
  ) async {
    final response = await _connect.post(
      _prefix,
      body.toJson(),
      decoder: (value) => AuthenticateUserResponse.fromJson(
        value as Map<String, dynamic>,
      ),
    );

    if (!response.hasError) {
      return response.body!;
    } else {
      switch (response.statusCode) {
        case 401:
          throw UserNotFoundException(
            message: LoginTranslate.userPasswordWrongSnackbar,
          );
        default:
          throw DefaultException(message: response.body!.error!);
      }
    }
  }
}
