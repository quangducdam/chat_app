import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'demo_app.dart';
import 'firebase_options.dart';
import 'dart:developer' as developer;

FirebaseAnalytics analytics = FirebaseAnalytics.instance;
FirebaseAuth firebaseAuth = FirebaseAuth.instance;
SharedPreferences? prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  firebaseAuth.authStateChanges().listen((User? user) {
    if (user == null) {
      developer.log('User is currently signed out!');
    } else {
      developer.log('User is signed in!');
    }
  });
  runApp(
    const DemoApp(),
  );
}
