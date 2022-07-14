import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/modules/fields/widgets/header_widget.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Talhões"),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.purpleBlue,
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: HeaderWidget(),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: 60,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 70,
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
                        ),
                      );
                    }
                    )
                  ),
                ),
            ],),
          ),
        ]),
      ),
    );
  }
}
