import 'package:flutter/material.dart';
import 'package:widgets/utils/app_routes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).pushNamed(AppRoutes.LOGINPAGE),
          child: const Center(child: Text('Click'))
        ),
      ),
    );
  }
}
