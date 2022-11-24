import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instragram_flutter/responsive/mobile_screen_layout.dart';
import 'package:instragram_flutter/responsive/responsive_layout_screen.dart';
import 'package:instragram_flutter/responsive/web_screen_layout.dart';
import 'package:instragram_flutter/screens/login_screen.dart';
import 'package:instragram_flutter/screens/signup_screen.dart';
import 'package:instragram_flutter/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAfsWIAM3WNPYIqVUwqqZjBHHU-KeCnTS0",
            appId: "1:681614327950:web:0f5a1242e2b2a0ac09c9df",
            messagingSenderId: "681614327950",
            projectId: "instragram-flutter-7369a",
            storageBucket: "instragram-flutter-7369a.appspot.com"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instragram Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: ResponsiveLayout(
      //     webScreenLayout: WebScreenLayout(),
      //     mobileScreenLayout: MobileScreenLayout()),
      // home: LoginScreen(),
      home: SignupScreen(),
    );
  }
}
