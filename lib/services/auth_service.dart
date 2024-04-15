import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String?> entrarUsuario ({required String email, required String senha}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: senha);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return 'Usuário não encontrado';
         case 'wrong-password':
          return 'Senha incorreta';
      }
        return e.code;
    }
    return null;
  }


  Future<String?> CadastrarUsuario ({required String email, required String senha, required String nome}) async {
    try {
    UserCredential userCredential =  await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: senha);
    await userCredential.user!.updateDisplayName(nome);
    } on FirebaseAuthException catch (e) {
      switch(e.code) {
        case 'email-already-in-use':
         return 'Email em uso';
      }
      return e.code;
    }
    return null;
  }


  Future<String?> redefinicaoSenha ({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);

    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
         return 'Usuario não encntrado';
      }
      return e.code;
    }
    return null;
  }


  Future<String?> deslogar() async {
    try {
      await _firebaseAuth.signOut().then((value) => null);
    } on FirebaseAuthException catch (e) {
      return e.code;
    }

    return null;
  }


  Future<String?> excluirConta({required String senha}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: _firebaseAuth.currentUser!.email!,
        password: senha
      );
      await _firebaseAuth.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
    return null;
  }
}