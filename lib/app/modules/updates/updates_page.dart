import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/modules/updates/update_card/update_card.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({Key? key}) : super(key: key);

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  List<bool> listBool = [];
  List<String> listString = [
    'Versão do App',
    'Firmware dos sensores mod 123',
    'Firmware dos sensores mod 456',
    'Firmware dos sensores mod 789',
  ];
  List<String> listVersion = [
    '0.0.2',
    '0.0.1',
    '0.0.4',
    '0.0.3',
  ];
  List<String> listVersionAvailable = ['0.0.3', '0.0.2', '0.0.5', '0.0.4'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.iceWhite,
        appBar: AppBar(
          title: const Text('Atualização'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white,
                      ),
                      padding: const EdgeInsets.only(top: 15, bottom: 30),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: listString.length,
                        itemBuilder: (ctx, index) {
                          listBool.add(false);
                          return UpdateCard(
                            isChecked: listBool[index],
                            onChanged: (value) {
                              setState(() {
                                listBool[index] = value!;
                              });
                            },
                            title: listString[index],
                            version: listVersion[index],
                            versionAvailable: listVersionAvailable[index],
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.purpleBlue,
                        textStyle: const TextStyle(
                          color: AppColors.white,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.file_download_outlined),
                          SizedBox(width: 10),
                          Text('Baixar e instalar'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
