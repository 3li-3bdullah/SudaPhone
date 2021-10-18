import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthViewModel extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  late String email, password, name;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  signInWithEmailAndPassword() async{
   await _auth.signInWithEmailAndPassword(email: email, password: password);
  }
}
