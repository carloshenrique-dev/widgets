import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/header.dart';
import 'package:widgets/app/core/ui/widgets/user_popup_menu_button.dart';

enum RadioButtonOptions { admin, engineer }

class ConfigUserPage extends StatefulWidget {
  const ConfigUserPage({Key? key}) : super(key: key);

  @override
  State<ConfigUserPage> createState() => _ConfigUserPageState();
}

class _ConfigUserPageState extends State<ConfigUserPage> {
  RadioButtonOptions? _selectedRadioButtonOption = RadioButtonOptions.admin;

  void _onButtonPressed() {
    showModalBottomSheet(
      backgroundColor: AppColors.white,
      context: context,
      builder: (context) {
        return Container(
          color: const Color(0xFF737373),
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.5,
            child: SizedBox(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Convidar usuário',
                          style: TextStyle(
                            color: AppColors.purpleBlue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close_outlined,
                            color: AppColors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.person_outline,
                            color: AppColors.purpleBlue,
                            size: 40,
                          ),
                          Text(
                            'Cadastrar usuário identificado',
                            style: TextStyle(
                              color: AppColors.purpleBlue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 40)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.person_outline,
                            color: AppColors.purpleBlue,
                            size: 40,
                          ),
                          Text(
                            'Cadastrar grupo de usuários',
                            style: TextStyle(
                              color: AppColors.purpleBlue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 40)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _accessLevelBottomSheetOpen() {
    showModalBottomSheet(
      backgroundColor: AppColors.white,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => Container(
            color: const Color(0xFF737373),
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.3,
              child: SizedBox(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Nível de acesso',
                                style: TextStyle(
                                  color: AppColors.purpleBlue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                FontAwesomeIcons.circleQuestion,
                                color: AppColors.purpleBlue,
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close_outlined,
                              color: AppColors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        RadioListTile(
                          activeColor: AppColors.purpleBlue,
                          title: Text(
                            'Administrador',
                            style: TextStyle(
                              color: _selectedRadioButtonOption ==
                                      RadioButtonOptions.admin
                                  ? AppColors.black
                                  : AppColors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: RadioButtonOptions.admin,
                          groupValue: _selectedRadioButtonOption,
                          onChanged: (RadioButtonOptions? selected) {
                            setState(() {
                              _selectedRadioButtonOption = selected;
                            });
                          },
                        ),
                        RadioListTile(
                          activeColor: AppColors.purpleBlue,
                          title: Text(
                            'Engenheiro',
                            style: TextStyle(
                              color: _selectedRadioButtonOption ==
                                      RadioButtonOptions.engineer
                                  ? AppColors.black
                                  : AppColors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: RadioButtonOptions.engineer,
                          groupValue: _selectedRadioButtonOption,
                          onChanged: (RadioButtonOptions? selected) {
                            setState(() {
                              _selectedRadioButtonOption = selected;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

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
            SliverPersistentHeader(
              pinned: true,
              delegate: Header(
                maxHeight: 80,
                minHeight: 80,
                widget: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 16, right: 5),
                      width: MediaQuery.of(context).size.width * 0.76,
                      height: 45,
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.search, color: AppColors.purpleBlue),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.12,
                      child: IconButton(
                        splashRadius: 20,
                        icon:
                            const Icon(Icons.add, color: AppColors.purpleBlue),
                        onPressed: _onButtonPressed,
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
            ),
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
                                            'Matheus Silva',
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
                                              color: AppColors.grey,
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.person_outline,
                                        color: AppColors.green,
                                      ),
                                      UserPopupMenuButton(
                                        onTap: _accessLevelBottomSheetOpen,
                                      )
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
