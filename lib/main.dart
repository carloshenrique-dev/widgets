import 'package:flutter/material.dart';
import 'package:widgets/pages/login_page.dart';
import 'package:widgets/utils/app_routes.dart';
import 'home.dart';
import 'pages/recover_password_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      initialRoute: AppRoutes.HOME,
      routes: {
        AppRoutes.LOGINPAGE: (ctx) => const LoginPage(),
        AppRoutes.RECOVER_PASSWORD_PAGE: (ctx) => const RecoverPasswordPage(),
      },
    );
  }
}
