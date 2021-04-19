import 'package:layers_flutter/product/model/user_model.dart';

class UserManager implements IUserManager {
  @override
  double defaultMoney = 100;

  @override
  User? user;

  @override
  Future<bool> incrementMoney(double val) {
    // TODO: implement incrementMoney
    throw UnimplementedError();
  }

  @override
  void updateUser() {
    // TODO: implement updateUser
  }
}

abstract class IUserManager {
  User? user;

  double defaultMoney = 0;

  void updateUser();

  Future<bool> incrementMoney(double val);
}
