import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/address_widget/address_widget.dart';
import 'package:widgets/app/core/ui/widgets/personalized_container_widget/personalized_container_widget.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';
import 'package:widgets/app/entities/address.dart';
import 'package:widgets/app/entities/payment/card.dart';
import 'package:widgets/app/core/ui/widgets/card_fields_widget/card_fields_widget.dart';

class RegisterCardPage extends StatefulWidget {
  const RegisterCardPage({Key? key}) : super(key: key);

  @override
  State<RegisterCardPage> createState() => _RegisterCardPageState();
}

class _RegisterCardPageState extends State<RegisterCardPage> {
  Address _addressModel = const Address();
  CreditCard _model = CreditCard();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastrar cartão de crédito'),
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
                    CardFieldsWidget(
                      onSavedCardName: (value) => _model = _model.copyWith(
                        name: value,
                      ),
                      onSavedCardNumber: (value) => _model = _model.copyWith(
                        number: value,
                      ),
                      onSavedCpf: (value) => _model = _model.copyWith(
                        cpf: value,
                      ),
                      onSavedCvv: (value) => _model = _model.copyWith(
                        cvv: value,
                      ),
                      onSavedExpirationDate: (value) =>
                          _model = _model.copyWith(
                        expirationDate: value,
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
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
