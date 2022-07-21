import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/address_widget/address_widget.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/personalized_container_widget/personalized_container_widget.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/cnpj_widget.dart';
import 'package:widgets/app/entities/address.dart';
import 'package:widgets/app/entities/farm_data/farm_data.dart';

class EditFarmDataPage extends StatefulWidget {
  const EditFarmDataPage({super.key});

  @override
  State<EditFarmDataPage> createState() => _EditFarmDataPageState();
}

class _EditFarmDataPageState extends State<EditFarmDataPage> {
  final _formKey = GlobalKey<FormState>();
  FarmData _model = FarmData();
  Address _addressModel = const Address();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dados da Fazenda'),
        ),
        backgroundColor: AppColors.backgroundColor,
        body: PersonalizedContainerWidget(
          widget: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextFormWidget(
                      title: 'Nome da Fazenda',
                      hintText: 'Digite aqui',
                      validator: Validatorless.required(
                        'Informe o nome da fazenda',
                      ),
                      textInputType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp('[0-9]')),
                      ],
                      onSaved: (value) => _model = _model.copyWith(
                        name: value,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultTextFormWidget(
                      title: 'Razão Social',
                      hintText: 'Digite aqui',
                      validator: Validatorless.required(
                        'Informe a razão social',
                      ),
                      textInputType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp('[0-9]')),
                      ],
                      onSaved: (value) => _model = _model.copyWith(
                        razaoSocial: value,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CnpjWidget(
                      onSaved: (value) => _model = _model.copyWith(
                        cnpj: value,
                      ),
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
                          _addressModel = _addressModel.copyWith(number: value),
                      onSavedAdress: (value) => _addressModel =
                          _addressModel.copyWith(address: value),
                      onSavedNeighborhood: (value) =>
                          _addressModel = _addressModel.copyWith(
                        neighboorhood: value,
                      ),
                      onSavedCity: (value) =>
                          _addressModel = _addressModel.copyWith(city: value),
                      onSavedPostalCode: (value) =>
                          _addressModel = _addressModel.copyWith(cep: value),
                      onSavedState: (value) =>
                          _addressModel = _addressModel.copyWith(
                        state: value,
                      ),
                    ),
                  ],
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
                      print(_model);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
