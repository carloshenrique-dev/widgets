import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/top_image.dart';

class SelectFarmPage extends StatelessWidget {
  const SelectFarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Container(
          color: AppColors.white,
          child: Column(
            children: [
              const TopImage(url: 'assets/images/farm.png'),
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
                            primary: AppColors.purpleBlue,
                            side: const BorderSide(
                              color: AppColors.purpleBlue,
                              width: 1,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Farm 1',
                            style: TextStyle(
                              color: AppColors.purpleBlue,
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
