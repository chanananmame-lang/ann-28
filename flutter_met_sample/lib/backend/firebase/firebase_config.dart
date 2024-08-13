import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDv7xJ_ZGUlUAubK5I_FB2vblXGCYES5rk",
            authDomain: "marketplace-flutter-met-yele5x.firebaseapp.com",
            projectId: "marketplace-flutter-met-yele5x",
            storageBucket: "marketplace-flutter-met-yele5x.appspot.com",
            messagingSenderId: "621340452060",
            appId: "1:621340452060:web:7000f32b30df07a6790019"));
  } else {
    await Firebase.initializeApp();
  }
}
