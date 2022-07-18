import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/header.dart';
import 'package:widgets/app/core/ui/widgets/user_popup_menu_button.dart';

class ConfigUserPage extends StatelessWidget {
  const ConfigUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<Object>>? items;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.iceWhite,
        appBar: AppBar(
          title: const Text('Usuários'),
        ),
        body: CustomScrollView(
          slivers: [
            const PersistentHeader(),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 170,
                    ),
                    child: DropdownButton(
                      elevation: 0,
                      underline: const SizedBox(),
                      icon: const Icon(
                        FontAwesomeIcons.angleDown,
                        color: AppColors.purpleBlue,
                      ),
                      isExpanded: true,
                      hint: const Text(
                        'Todas as fazendas',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      items: items,
                      onChanged: (select) => {},
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.white,
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const CircleAvatar(
                                        backgroundColor: AppColors.iceWhite,
                                        radius: 20,
                                        child: Icon(
                                          Icons.person_outline,
                                          color: AppColors.purpleBlue,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Matheus Silva Sauro',
                                            style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 18,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                          Text(
                                            'data',
                                            style: TextStyle(
                                              color: AppColors.gray,
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.person_outline,
                                        color: AppColors.green,
                                      ),
                                      UserPopupMenuButton()
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersistentHeader extends StatelessWidget {
  const PersistentHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: Header(
        max: 80,
        min: 80,
        widget: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16, right: 5),
              width: MediaQuery.of(context).size.width * 0.76,
              height: 45,
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: AppColors.purpleBlue),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.12,
              child: IconButton(
                splashRadius: 20,
                icon: const Icon(Icons.add, color: AppColors.purpleBlue),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.12,
              child: IconButton(
                splashRadius: 20,
                icon: const Icon(Icons.filter_list),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
