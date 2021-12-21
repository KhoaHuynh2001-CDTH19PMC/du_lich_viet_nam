import 'package:flutter/material.dart';
import 'login.dart';
import 'error_screen.dart';
import 'main_screen.dart';
import 'update_infor_screen.dart';
import 'change_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TravelStars',
      theme: ThemeData(backgroundColor: Color.fromRGBO(0, 93, 158, 1)),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const LoginScreen(),
        '/error': (context) => const ErrorScreen(),
        '/main': (context) => const MainScreen(),
        '/update_infor': (context) => const Update_InforScreen(),
        '/change_password': (context) => const Change_PasswordScreen(),
      },
    );
  }
}
