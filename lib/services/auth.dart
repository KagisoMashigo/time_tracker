import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthBase {
  User get currentUser;
  Stream<User> authStateChanges();
  Future<User> signInWithGoogle();
  Future<User> signInAnonymously();
  Future<void> signOut();
}

class Auth implements AuthBase {
  final _firebaseauth = FirebaseAuth.instance;

  @override
  Stream<User> authStateChanges() => _firebaseauth.authStateChanges();

  @override
  User get currentUser => _firebaseauth.currentUser;

  @override
  Future<User> signInAnonymously() async {
    final userCredentials = await _firebaseauth.signInAnonymously();
    return userCredentials.user;
  }

  Future<User> signInWithGoogle() async {
    final googleSignIn = GoogleSignIn();
    final googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      if (googleAuth.idToken != null) {
        final userCredential = await _firebaseauth
            .signInWithCredential(GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        ));
        return userCredential.user;
      } else {
        throw FirebaseAuthException(
          message: 'ERROR_MISSING_TOKEN',
          code: 'Missing Google ID Token',
        );
      }
    } else {
      throw FirebaseAuthException(
        message: 'ERROR_USER',
        code: 'Sign in aborted by user',
      );
    }
  }

  @override
  Future<void> signOut() async {
    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
    await _firebaseauth.signOut();
  }
}
