import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDdHviX_8yHFxcYQr_-_nfv6GFk5tP-F6s",
            authDomain: "fitme-3gryyr.firebaseapp.com",
            projectId: "fitme-3gryyr",
            storageBucket: "fitme-3gryyr.appspot.com",
            messagingSenderId: "1097044517473",
            appId: "1:1097044517473:web:3b58e606d42691ac4a8020"));
  } else {
    await Firebase.initializeApp();
  }
}
