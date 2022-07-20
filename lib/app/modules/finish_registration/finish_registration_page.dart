import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';
import 'package:widgets/app/core/utils/formatters/cep_input_formatter.dart';
import 'package:widgets/app/core/utils/formatters/cpf_input_formatter.dart';
import 'package:widgets/app/entities/address.dart';
import 'package:widgets/app/entities/finish_registration/finish_registration.dart';
import 'widgets/avatar_widget.dart';
import 'widgets/dropdown_widget.dart';

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
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                DefaultTextFormWidget(
                                  title: 'E-mail',
                                  hintText: 'Digite aqui',
                                  onSaved: (value) =>
                                      _model = _model.copyWith(email: value),
                                  validator: Validatorless.multiple([
                                    Validatorless.email(
                                      'Informe o e-mail corretamente',
                                    ),
                                    Validatorless.required('Informe o e-mail')
                                  ]),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                DefaultTextFormWidget(
                                  title: 'Telefone',
                                  hintText: '(DDD) Número',
                                  validator: Validatorless.required(
                                    'Telefone é obrigatório',
                                  ),
                                  onSaved: (value) =>
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
                                DefaultTextFormWidget(
                                  title: 'CPF',
                                  hintText: 'Digite aqui',
                                  textInputType: TextInputType.number,
                                  onSaved: (value) =>
                                      _model = _model.copyWith(cpf: value),
                                  validator: Validatorless.multiple([
                                    Validatorless.required('Informe seu CPF'),
                                    Validatorless.cpf('Informe seu CPF'),
                                  ]),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    CpfInputFormatter(),
                                  ],
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
                                DefaultTextFormWidget(
                                  title: 'Data de nascimento',
                                  hintText: 'DD/MM/AAAA',
                                  validator: Validatorless.required(
                                    'Data de nascimento é obrigatória',
                                  ),
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
                                const Text(
                                  'Endereço',
                                  style: AppTextStyle.textLink,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                DefaultTextFormWidget(
                                  title: 'CEP',
                                  hintText: 'Digite aqui',
                                  textInputType: TextInputType.number,
                                  validator:
                                      Validatorless.required('Informe seu CEP'),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    CepInputFormatter(ponto: false),
                                  ],
                                  onSaved: (value) => _addressModel =
                                      _addressModel.copyWith(cep: value),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: DefaultTextFormWidget(
                                        title: 'Cidade',
                                        hintText: 'Digite aqui',
                                        validator: Validatorless.required(
                                          'Informe sua cidade',
                                        ),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.deny(
                                            RegExp('[0-9]'),
                                          ),
                                        ],
                                        textInputType: TextInputType.text,
                                        onSaved: (value) => _addressModel =
                                            _addressModel.copyWith(city: value),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: DefaultTextFormWidget(
                                        title: 'Estado',
                                        hintText: 'UF',
                                        validator: Validatorless.required(
                                          'Informe seu estado',
                                        ),
                                        textInputType: TextInputType.text,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.deny(
                                            RegExp('[0-9]'),
                                          ),
                                          LengthLimitingTextInputFormatter(2),
                                        ],
                                        onSaved: (value) => _addressModel =
                                            _addressModel.copyWith(
                                          state: value,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                DefaultTextFormWidget(
                                  title: 'Bairro',
                                  hintText: 'Digite aqui',
                                  validator: Validatorless.required(
                                    'Informe seu bairro',
                                  ),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                      RegExp('[0-9]'),
                                    ),
                                  ],
                                  textInputType: TextInputType.text,
                                  onSaved: (value) =>
                                      _addressModel = _addressModel.copyWith(
                                    neighboorhood: value,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                DefaultTextFormWidget(
                                  title: 'Logradouro',
                                  hintText: 'Rua, Av, Travessa...',
                                  validator: Validatorless.required(
                                    'Informe seu logradouro',
                                  ),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                      RegExp('[0-9]'),
                                    ),
                                  ],
                                  onSaved: (value) => _addressModel =
                                      _addressModel.copyWith(address: value),
                                  textInputType: TextInputType.text,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                DefaultTextFormWidget(
                                  title: 'Número',
                                  hintText: '000',
                                  textInputType: TextInputType.number,
                                  validator: Validatorless.multiple([
                                    Validatorless.required(
                                      'Digite o número do seu endereço',
                                    ),
                                    Validatorless.number(
                                      'Digite apenas números',
                                    )
                                  ]),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(6),
                                  ],
                                  onSaved: (value) => _addressModel =
                                      _addressModel.copyWith(number: value),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                DefaultTextFormWidget(
                                  title: 'Complemento',
                                  hintText: 'Digite aqui',
                                  validator: Validatorless.required(
                                    'Digite seu complemento',
                                  ),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                      RegExp('[0-9]'),
                                    ),
                                  ],
                                  onSaved: (value) =>
                                      _addressModel = _addressModel.copyWith(
                                    addresLine2: value,
                                  ),
                                  textInputType: TextInputType.text,
                                  textInputAction: TextInputAction.done,
                                  controller: controller,
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
                                        print(_model);
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
