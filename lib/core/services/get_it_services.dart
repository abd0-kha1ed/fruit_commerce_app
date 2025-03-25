import 'package:fruit_commerce_app/core/services/firebase_auth_services.dart';
import 'package:fruit_commerce_app/feature/auth/data/repos/auth_repo_impl.dart';
import 'package:fruit_commerce_app/feature/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<AuthRepo>(
      AuthRepoImpl(firebaseAuthServices: getIt<FirebaseAuthServices>()));
}
