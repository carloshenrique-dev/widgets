import 'package:flutter/material.dart';
import 'header_widget.dart';
import 'password_row_widget.dart';
import 'text_data_widget.dart';

class BodyWidget extends StatelessWidget {
  final VoidCallback buildPasswordBottomSheet;

  const BodyWidget({super.key, required this.buildPasswordBottomSheet});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderWidget(),
        const SizedBox(
          height: 20,
        ),
        const TextDataWidget(
          title: 'Nome e sobrenome',
          data: 'Mariana Oliveira',
        ),
        const TextDataWidget(
          title: 'E-mail',
          data: 'mariana@dominio.com.br',
        ),
        const TextDataWidget(
          title: 'Telefone',
          data: '(11) 98557-6404',
        ),
        const TextDataWidget(
          title: 'Função/Cargo',
          data: 'Administradora',
        ),
        const TextDataWidget(
          title: 'Formação',
          data: 'Administração',
        ),
        const TextDataWidget(
          title: 'Data de nascimento',
          data: '24/09/1994',
        ),
        const TextDataWidget(
          title: 'Endereço',
          data: 'Rua Alameda 2222\nCotia - Sp\nCEP 12345-000',
        ),
        const TextDataWidget(
          title: 'Atividade principal',
          data: 'Administração',
        ),
        PasswordRowWidget(
          buildBottomSheet: buildPasswordBottomSheet,
        ),
      ],
    );
  }
}
