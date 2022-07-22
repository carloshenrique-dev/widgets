import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/widgets/address_widget/address_widget.dart';
import 'package:widgets/app/core/ui/widgets/personalized_container_widget/personalized_container_widget.dart';
import 'package:widgets/app/core/ui/widgets/button_widgets/retangular_button_widget.dart';
import 'package:widgets/app/core/ui/widgets/total_amount_widget/total_amount_widget.dart';
import 'package:widgets/app/entities/address.dart';
import 'package:widgets/app/entities/payment/card.dart';
import '../../../core/ui/widgets/card_fields_widget/card_fields_widget.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
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
              Divider(
                color: Colors.grey[300],
                height: 45,
              ),
              const TotalAmountWidget(),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: size.width,
                height: 50,
                child: RetangularButtonWidget(
                  title: 'Pagar',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      _model = _model.copyWith(
                        address: _addressModel,
                      );
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
