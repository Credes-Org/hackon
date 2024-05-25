import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hackon/error_handler.dart';

class GoogleAuthService {

  final CustomErrorHandler _errorHandler = CustomErrorHandler();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  signInWithGoogle() async {
    try{
      await Future.delayed(Duration(seconds: 2));
      throw Exception('An example error');
    }catch(error, stackTrace){
      _errorHandler.handleError(error, stackTrace);
    }
  }
}