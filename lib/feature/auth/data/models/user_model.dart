import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_commerce_app/feature/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.email, required super.name, required super.uId});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
        email: user.email ?? '', name: user.displayName ?? '', uId: user.uid);
  }
}
