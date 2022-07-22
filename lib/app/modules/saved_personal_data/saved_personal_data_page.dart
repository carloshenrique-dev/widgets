import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/bottom_sheet_header.dart';
import 'package:widgets/app/core/ui/widgets/button_widgets/text_button_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/password_form_field.dart';
import 'package:widgets/app/core/ui/widgets/button_widgets/retangular_button_widget.dart';
import 'package:widgets/app/entities/change_password/change_password.dart';
import 'package:widgets/app/core/ui/widgets/avatar_widget/avatar_widget.dart';

import 'widgets/body_widget.dart';

class SavedPersonalDataPage extends StatefulWidget {
  const SavedPersonalDataPage({Key? key}) : super(key: key);

  @override
  State<SavedPersonalDataPage> createState() => _SavedPersonalDataPageState();
}

class _SavedPersonalDataPageState extends State<SavedPersonalDataPage> {
  final _formKey = GlobalKey<FormState>();
  ChangePassword _model = ChangePassword();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados Pessoais'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 60,
          bottom: 20,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 30,
                    left: 0.0,
                    right: 0.0,
                    bottom: 0.0,
                    child: SizedBox(
                      height: size.height,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: SingleChildScrollView(
                          child: BodyWidget(
                            buildPasswordBottomSheet: () =>
                                buildPasswordBottomSheet(context),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -35,
              child: AvatarWidget(
                onPressed: () => buildPhotoBottomSheet(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> buildPasswordBottomSheet(
    BuildContext context,
  ) {
    final Size size = MediaQuery.of(context).size;
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BottomSheetHeader(
                    title: 'Alterar senha',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PasswordFormField(
                    title: 'Senha antiga',
                    validator: Validatorless.required(
                      'Necessário informar a senha antiga',
                    ),
                    onSaved: (value) =>
                        _model = _model.copyWith(oldPassword: value),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PasswordFormField(
                    title: 'Nova senha',
                    validator: Validatorless.required(
                      'Necessário informar a nova senha',
                    ),
                    onSaved: (value) =>
                        _model = _model.copyWith(newPassword: value),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PasswordFormField(
                    title: 'Confirmar nova senha',
                    validator: Validatorless.required(
                      'Necessário informar confirmar a nova senha',
                    ),
                    onSaved: (value) =>
                        _model = _model.copyWith(repeatNewPassword: value),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: size.width,
                    height: 45,
                    child: RetangularButtonWidget(
                      title: 'Salvar',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future buildPhotoBottomSheet(
    BuildContext context,
  ) {
    final Size size = MediaQuery.of(context).size;
    return showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                padding: EdgeInsets.zero,
                alignment: Alignment.centerRight,
                onPressed: () => Modular.to.pop(),
                icon: const Icon(
                  Icons.close,
                  size: 18,
                  color: AppColors.grey,
                ),
              ),
            ),
            const CircleAvatar(
              backgroundColor: AppColors.grey,
              radius: 50,
              child: Icon(
                Icons.person_outlined,
                size: 50,
                color: AppColors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButtonWidget(
              title: 'Tirar uma foto',
              onPressed: () {},
            ),
            const Divider(
              color: AppColors.grey,
              height: 30,
            ),
            TextButtonWidget(
              title: 'Escolher foto da galeria',
              onPressed: () {},
            ),
            const Divider(
              color: AppColors.grey,
              height: 30,
            ),
            TextButtonWidget(
              title: 'Apagar foto',
              textColor: Colors.red,
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: size.width,
              height: 45,
              child: RetangularButtonWidget(
                title: 'Salvar',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
