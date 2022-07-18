import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/finance_popup_menu_button.dart';
import 'package:widgets/app/core/ui/widgets/header.dart';

class FinancialDataPage extends StatelessWidget {
  const FinancialDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.iceWhite,
        appBar: AppBar(
          title: const Text('Dados Financeiros'),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: Header(
                  max: 80,
                  min: 80,
                  widget: const SearchBar(),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    Container(
                      width: double.infinity,
                      color: AppColors.iceWhite,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: const [
                          DateValue(),
                          SizedBox(height: 20),
                          FutureTransactions(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomSheet: const BottomButton(),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16, right: 5),
          width: MediaQuery.of(context).size.width * 0.8,
          height: 45,
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: AppColors.purpleBlue),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
          child: IconButton(
            splashRadius: 20,
            icon: const Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class DateValue extends StatelessWidget {
  const DateValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: SizedBox(
                  child: Text(
                    'Data',
                    style: TextStyle(fontWeight: FontWeight.w600),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Text(
                    'Valor',
                    style: TextStyle(fontWeight: FontWeight.w600),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: AppColors.purpleBlue,
            thickness: 2,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) {
              return Row(children: [
                const Expanded(
                  child: SizedBox(
                    child: Text(
                      'Data',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: AppColors.gray),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Valor',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.gray),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        FinancePopupMenuButton(),
                      ],
                    ),
                  ),
                ),
              ]);
            }),
          ),
        ],
      ),
    );
  }
}

class FutureTransactions extends StatelessWidget {
  const FutureTransactions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: SizedBox(
                  child: Text(
                    'Futuros Lançamentos',
                    style: TextStyle(fontWeight: FontWeight.w600),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Text(
                    'Valor',
                    style: TextStyle(fontWeight: FontWeight.w600),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: AppColors.purpleBlue,
            thickness: 2,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) {
              return Row(children: [
                const Expanded(
                  child: SizedBox(
                    child: Text(
                      'Futuros Lançamentos',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: AppColors.gray),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Valor',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.gray),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        FinancePopupMenuButton(),
                      ],
                    ),
                  ),
                ),
              ]);
            }),
          ),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 85,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
        color: AppColors.iceWhite,
      ),
      child: OutlinedButton(
        style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.all<Color>(AppColors.purpleBlue),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              color: AppColors.purpleBlue,
              width: 1,
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.edit_outlined),
            Text('Editar forma de pagamento'),
          ],
        ),
      ),
    );
  }
}
