import 'package:get/get.dart';

class AuthController extends GetxController {
  bool _login = true;

  bool get login => _login;

  void toggleAuth() {
    _login = !_login;
    update();
  }
}
