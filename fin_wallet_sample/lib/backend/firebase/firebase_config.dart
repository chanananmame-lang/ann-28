import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDj40SeO3ikSHgStSJDZwUGpgnsmxh7cKA",
            authDomain: "marketplace-fin-wallet-1qfuk2.firebaseapp.com",
            projectId: "marketplace-fin-wallet-1qfuk2",
            storageBucket: "marketplace-fin-wallet-1qfuk2.appspot.com",
            messagingSenderId: "1098175770154",
            appId: "1:1098175770154:web:8799057ca5ca3ccbc45d53"));
  } else {
    await Firebase.initializeApp();
  }
}
