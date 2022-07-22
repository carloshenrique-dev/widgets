import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/address_widget/address_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/button_widgets/retangular_button_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/birth_date_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/cpf_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/email_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/phone_widget.dart';
import 'package:widgets/app/entities/address.dart';
import 'package:widgets/app/entities/finish_registration/finish_registration.dart';
import '../../core/ui/widgets/avatar_widget/avatar_widget.dart';
import '../../core/ui/widgets/drop_down_form_widget/dropdown_widget.dart';

class FinishRegistrationPage extends StatefulWidget {
  const FinishRegistrationPage({Key? key}) : super(key: key);

  @override
  State<FinishRegistrationPage> createState() => _FinishRegistrationPageState();
}

class _FinishRegistrationPageState extends State<FinishRegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  FinishRegistration _model = FinishRegistration();
  Address _addressModel = const Address();

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
                    top: 40,
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
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DefaultTextFormWidget(
                                  title: 'Nome e Sobrenome',
                                  hintText: 'Digite aqui',
                                  onSaved: (value) =>
                                      _model = _model.copyWith(name: value),
                                  validator: Validatorless.required(
                                    'Nome e sobrenome é obrigatório',
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                EmailWidget(
                                  onSave: (value) =>
                                      _model = _model.copyWith(email: value),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                PhoneWidget(
                                  onSave: (value) =>
                                      _model = _model.copyWith(phone: value),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                DefaultTextFormWidget(
                                  title: 'Função/Cargo',
                                  hintText: 'Digite aqui',
                                  validator: Validatorless.required(
                                    'Função/Cargo é obrigatória',
                                  ),
                                  onSaved: (value) =>
                                      _model = _model.copyWith(role: value),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                CpfWidget(
                                  onSave: (value) =>
                                      _model = _model.copyWith(cpf: value),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                DefaultTextFormWidget(
                                  title: 'Formação',
                                  hintText: 'Digite aqui',
                                  validator: Validatorless.required(
                                    'Formação é obrigatória',
                                  ),
                                  onSaved: (value) => _model =
                                      _model.copyWith(education: value),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                BirthDateWidget(
                                  onSaved: (value) => _model =
                                      _model.copyWith(birthDate: value),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Atividade principal/Área de interesse',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                DropdownWidget(
                                  onSaved: (value) => _model =
                                      _model.copyWith(activityArea: value),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                AddressWidget(
                                  onSavedAddressLine2: (value) =>
                                      _addressModel = _addressModel.copyWith(
                                    addresLine2: value,
                                  ),
                                  onSavedAddressNumber: (value) =>
                                      _addressModel =
                                          _addressModel.copyWith(number: value),
                                  onSavedAdress: (value) => _addressModel =
                                      _addressModel.copyWith(address: value),
                                  onSavedNeighborhood: (value) =>
                                      _addressModel = _addressModel.copyWith(
                                    neighboorhood: value,
                                  ),
                                  onSavedCity: (value) => _addressModel =
                                      _addressModel.copyWith(city: value),
                                  onSavedPostalCode: (value) => _addressModel =
                                      _addressModel.copyWith(cep: value),
                                  onSavedState: (value) =>
                                      _addressModel = _addressModel.copyWith(
                                    state: value,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: size.width,
                                  height: 50,
                                  child: RetangularButtonWidget(
                                    title: 'Salvar',
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();

                                        _model = _model.copyWith(
                                          address: _addressModel,
                                        );
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
                  ),
                ],
              ),
            ),
            const Positioned(
              top: -35,
              child: AvatarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
