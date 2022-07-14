import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'package:widgets/app/modules/payment/boleto/boleto_page.dart';
import 'package:widgets/app/modules/payment/card/card_page.dart';
import 'package:widgets/app/modules/payment/pix/pix_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pagamento'),
          titleSpacing: 20,
          bottom: TabBar(
            padding: EdgeInsets.zero,
            isScrollable: true,
            labelStyle: AppTextStyle.textLink,
            physics: const BouncingScrollPhysics(),
            indicatorColor: AppColors.purpleBlue,
            tabs: [
              SizedBox(
                width: width / 2.75,
                child: const Tab(
                  text: 'Cartão de crédito',
                ),
              ),
              SizedBox(
                width: width / 6,
                child: const Tab(
                  text: 'Boleto',
                ),
              ),
              SizedBox(
                width: width / 7,
                child: const Tab(
                  text: 'Pix',
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CardPage(),
            BoletoPage(),
            PixPage(),
          ],
        ),
      ),
    );
  }
}
