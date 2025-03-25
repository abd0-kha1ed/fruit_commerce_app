import 'package:dartz/dartz.dart';
import 'package:fruit_commerce_app/core/errors/custom_exception.dart';
import 'package:fruit_commerce_app/core/errors/failure.dart';
import 'package:fruit_commerce_app/core/services/firebase_auth_services.dart';
import 'package:fruit_commerce_app/feature/auth/data/models/user_model.dart';
import 'package:fruit_commerce_app/feature/auth/domain/entities/user_entity.dart';
import 'package:fruit_commerce_app/feature/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;

  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      return left(
          ServerFailure(message: 'An error occurred. Please try again later'));
    }
  }
}
