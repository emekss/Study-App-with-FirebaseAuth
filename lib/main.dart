import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_page_ui/pages/home_page.dart';
import 'package:login_page_ui/auth/main_page.dart';
import 'package:login_page_ui/pages/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      routes: {
        '/welcomePage': (context) => const WelcomePage(),
        '/homePage': (context) => const HomePage()
      },
    );
  }
}
