import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/header.dart';
import 'package:widgets/app/modules/data_sharing/company_card/company_card.dart';

class DataSharingPage extends StatefulWidget {
  const DataSharingPage({Key? key}) : super(key: key);

  @override
  State<DataSharingPage> createState() => _DataSharingPageState();
}

class _DataSharingPageState extends State<DataSharingPage> {
  bool _checkAll = false;
  bool _checkBayer = false;
  bool _checkEmbrapa = false;
  bool _checkBunge = false;
  final DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      appBar: AppBar(
        title: const Text('Compartilhamento'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: CustomScrollView(slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: Header(
              color: AppColors.iceWhite,
              max: 80,
              min: 80,
              widget: Column(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Row(
                  children: [
                    Checkbox(
                      value: _checkAll,
                      onChanged: (check) => setState(() => _checkAll = check!),
                    ),
                    const Text('Marcar todos',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                CompanyCard(
                  title: 'Bayer do Brasil',
                  value: _checkBayer,
                  onChanged: (check) => setState(() => _checkBayer = check!),
                  assetName: 'assets/images/bayer_logo.png',
                  date: DateFormat('dd/MM/yyyy').format(date),
                ),
                const SizedBox(height: 15),
                CompanyCard(
                  title: 'Embrapa',
                  value: _checkEmbrapa,
                  onChanged: (check) => setState(() => _checkEmbrapa = check!),
                  assetName: 'assets/images/embrapa_logo.png',
                  date: DateFormat('dd/MM/yyyy').format(date),
                ),
                const SizedBox(height: 15),
                CompanyCard(
                  title: 'Bunge',
                  value: _checkBunge,
                  onChanged: (check) => setState(() => _checkBunge = check!),
                  assetName: 'assets/images/bunge_logo.png',
                  date: DateFormat('dd/MM/yyyy').format(date),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
