import 'package:flutter/material.dart';
import 'package:widgets/theme/app_colors.dart';
import 'widgets/circular_button_widget.dart';
import 'widgets/default_text_form_field_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*SizedBox(
              width: media.width,
              height: 45,
              child: const RetangularButtonWidget(),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: media.width,
              height: 45,
              child: const CircularButtonWidget(),
            ),
            const SizedBox(
              height: 10,
            ),*/
            const DefaultTextFormWidget(),
            const SizedBox(
              height: 10,
            ),
            const DefaultTextFormWidget(
              title: 'Senha',
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: media.width,
              height: 45,
              child: const CircularButtonWidget(
                color: AppColors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
