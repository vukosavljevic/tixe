import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      if (e is FirebaseAuthException) {
        switch (e.code) {
          case "user-not-found":
            throw FirebaseAuthException(
              code: 'user-not-found',
              message: 'Nema korisnika.',
            );
          case "wrong-password":
            throw FirebaseAuthException(
              code: 'wrong-password',
              message: 'Kriva zaporka.',
            );
          case "invalid-email":
            throw FirebaseAuthException(
              code: 'invalid-email',
              message: 'Neispravan e-mail',
            );
          case "user-disabled":
            throw FirebaseAuthException(
                code: 'user-disabled', message: 'Korisnik isključen');
        }
      }
      rethrow;
    }
  }

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
