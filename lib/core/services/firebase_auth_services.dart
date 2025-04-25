import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_commerce_app/core/errors/custom_exception.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور ضعيفة');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'البريد الالكتروني مستخدم من قبل');
      } else {
        throw CustomException(message: 'حدث خطأ ما');
      }
    } catch (e) {
      throw CustomException(message: 'حدث خطأ ما');
    }
  }
}
