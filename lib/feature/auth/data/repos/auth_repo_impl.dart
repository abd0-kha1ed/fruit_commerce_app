import 'package:dartz/dartz.dart';
import 'package:fruit_commerce_app/core/errors/failure.dart';
import 'package:fruit_commerce_app/feature/auth/domain/entities/user_entity.dart';
import 'package:fruit_commerce_app/feature/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(String email, String password) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }
}