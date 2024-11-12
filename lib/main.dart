import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/register_page.dart';
import 'screens/forgot_password_page.dart';
import 'screens/main_page.dart';
import 'screens/word_details_page.dart';

void main() {
  runApp(VocabLearningApp());
}

class VocabLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vocabulary Learning App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // First page to show is the LoginPage
      routes: {
        '/': (context) =>  LoginPage(),
        '/register': (context) => RegisterPage(),
        '/forgot_password': (context) => ForgotPasswordPage(),
        '/main': (context) => MainPage(),
        '/word_details': (context) => WordDetailsPage(),
      },
    );
  }
}
