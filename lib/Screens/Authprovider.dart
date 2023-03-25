import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationHelper {
  static final FirebaseAuth auth = FirebaseAuth.instance;
  get user => auth.currentUser;

  //SIGN UP METHOD
  static Future signUp({String? email, String? password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email!, password: password!);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN IN METHOD
  static Future signIn({String? email, String? password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email!, password: password!);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN OUT METHOD
  Future signOut() async {
    await auth.signOut();

    print('signout');
  }
}
