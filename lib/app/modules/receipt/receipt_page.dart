import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'package:widgets/app/core/ui/widgets/address_widget/address_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/personalized_container_widget/personalized_container_widget.dart';
import 'package:widgets/app/core/ui/widgets/button_widgets/retangular_button_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/cpf_widget.dart';
import 'package:widgets/app/entities/address.dart';
import 'package:widgets/app/entities/payment/receipt.dart';

class ReceiptPage extends StatefulWidget {
  const ReceiptPage({Key? key}) : super(key: key);

  @override
  State<ReceiptPage> createState() => _ReceiptPageState();
}

class _ReceiptPageState extends State<ReceiptPage> {
  Receipt _model = Receipt();
  Address _addressModel = const Address();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Plano'),
      ),
      body: PersonalizedContainerWidget(
        widget: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dados para nota fiscal',
                style: AppTextStyle.textLink,
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFormWidget(
                title: 'Nome e Sobrenome',
                hintText: 'Digite aqui',
                onSaved: (value) => _model = _model.copyWith(name: value),
                validator: Validatorless.required(
                  'Nome e sobrenome é obrigatório',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CpfWidget(
                onSave: (value) => _model = _model.copyWith(
                  cpf: value,
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
                onSavedAdress: (value) =>
                    _addressModel = _addressModel.copyWith(address: value),
                onSavedNeighborhood: (value) =>
                    _addressModel = _addressModel.copyWith(
                  neighboorhood: value,
                ),
                onSavedCity: (value) =>
                    _addressModel = _addressModel.copyWith(city: value),
                onSavedPostalCode: (value) =>
                    _addressModel = _addressModel.copyWith(cep: value),
                onSavedState: (value) => _addressModel = _addressModel.copyWith(
                  state: value,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: size.width,
                height: 50,
                child: RetangularButtonWidget(
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
    );
  }
}
