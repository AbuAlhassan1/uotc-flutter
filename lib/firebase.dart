import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential> signGoogle() async {
  await Firebase.initializeApp();

  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  print(
      '${googleUser} aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');

  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  return await FirebaseAuth.instance.signInWithCredential(credential);
}

Future<bool> sign() async {
  return await GoogleSignIn().isSignedIn();
}

Future<void> signOut() async {
  await FirebaseAuth.instance.signOut();
}
