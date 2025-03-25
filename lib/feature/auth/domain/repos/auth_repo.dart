import 'package:dartz/dartz.dart';
import 'package:fruit_commerce_app/core/errors/failure.dart';
import 'package:fruit_commerce_app/feature/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password);
}
