import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/header.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: Header(
              widget: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColors.purpleBlue,
                          child: Icon(
                            Icons.person,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Nome do Usuário',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: AppColors.purpleBlue,
                              ),
                            ),
                            Text(
                              'Administrador',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                leading: const Icon(
                  Icons.person_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Dados pessoais'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.house_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Dados das Fazendas'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.attach_money_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Dados Financeiros'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.description_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Plano'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.cell_tower_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Sensores'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.bar_chart_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Parâmetros'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.people_alt_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Usuários'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.share_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Compartilhamento'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.notifications_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Alertas'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.download_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Atualização'),
                onTap: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 1,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.description_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Legal'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.exit_to_app_outlined,
                  color: AppColors.purpleBlue,
                ),
                title: const Text('Sair'),
                onTap: () {},
              ),
            ]),
          )
        ],
      ),
    );
  }
}
