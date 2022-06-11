import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import http package
import 'package:http/http.dart' as http;

class FirebaseController extends GetxController {
  final isSignedIn = false.obs;
  final test = "".obs;
  final token = "".obs;

  @override
  void onInit() async {
    super.onInit();
    await Firebase.initializeApp();
  }

  Future fetchTest(id_token) async {
    final client = http.Client();

    http.Response res = await client.get(Uri.parse(
        "http://192.168.100.34/api/user/firebase?id_token=$id_token"));
    return res.body.toString();
  }

  Future<UserCredential?> signinWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    String? gg = googleAuth?.idToken;
    token.value = gg!;
    if (googleUser != null) {
      isSignedIn.value = true;
    }

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signoutUser() async {
    if (FirebaseAuth.instance.currentUser != null) {
      await GoogleSignIn().signOut();
      isSignedIn.value = false;
    }
  }
}
