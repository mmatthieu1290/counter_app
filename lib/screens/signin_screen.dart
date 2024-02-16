import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:counter_app/widgets/widgets.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/gmail.readonly',
  ],
);

class SignInGoogle extends StatelessWidget {
  // Fonction pour démarrer la connexion
  Future<void> _handleSignIn() async {
    try {
      print("ooookkkk");
      await _googleSignIn.signIn();
      print(
          _googleSignIn.currentUser?.email); // Affiche l'email de l'utilisateur
    } catch (error) {
      print("Errroooooooorrrr");
      print(error);
    }
  }

  const SignInGoogle({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          title: const Text('Google Sign-In Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: _handleSignIn,
            child: const Text('Sign in with Google'),
          ),
        ),
      ),
    );
  }
}
