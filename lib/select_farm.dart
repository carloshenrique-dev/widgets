import 'package:flutter/material.dart';
import 'package:widgets/theme/app_colors.dart';

class SelectFarmScreen extends StatelessWidget {
  const SelectFarmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.white,
          centerTitle: true,
          title: const Text(
            'Login',
            style: TextStyle(
              color: AppColors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          color: AppColors.white,
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Image(image: AssetImage('assets/images/farm.png')),
              const SizedBox(height: 40),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (ctx, index) {
                      return Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 45,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: AppColors.blue,
                            side: const BorderSide(
                              color: AppColors.blue,
                              width: 1,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Farm 1',
                            style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
