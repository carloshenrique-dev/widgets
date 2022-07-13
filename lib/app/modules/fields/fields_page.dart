import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

import 'widgets/header_widget.dart';

class FieldsPage extends StatefulWidget {
  const FieldsPage({Key? key}) : super(key: key);

  @override
  State<FieldsPage> createState() => _FieldsPageState();
}

class _FieldsPageState extends State<FieldsPage> {
  List<String> plots = [
    'Talhão Asa Branca',
    'Talhão Espigão',
    'Talhão Santa Ana'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Projetos')),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: HeaderWidget(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                generateListTile(size),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> generateListTile(Size size) {
    return List<Container>.generate(
      60,
      (index) {
        return Container(
          padding: const EdgeInsets.all(10),
          width: size.width * .14,
          child: ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            tileColor: Colors.white,
            title: const Text(
              'Fazenda A',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            leading: const Icon(
              Icons.agriculture,
              color: AppColors.purpleBlue,
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
