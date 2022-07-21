import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/personalized_container_widget/personalized_container_widget.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/cpf_widget.dart';
import 'package:widgets/app/core/ui/widgets/total_amount_widget/total_amount_widget.dart';
import 'package:widgets/app/entities/payment/boleto.dart';

class BoletoPage extends StatefulWidget {
  const BoletoPage({super.key});

  @override
  State<BoletoPage> createState() => _BoletoPageState();
}

class _BoletoPageState extends State<BoletoPage> {
  final _formKey = GlobalKey<FormState>();
  Boleto _model = Boleto();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: PersonalizedContainerWidget(
        widget: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  DefaultTextFormWidget(
                    title: 'Nome e Sobrenome',
                    hintText: 'Digite aqui',
                    validator: Validatorless.required('Digite seu nome'),
                    textInputType: TextInputType.text,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp('[0-9]')),
                    ],
                    onSaved: (value) => _model = _model.copyWith(name: value),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CpfWidget(
                    onSave: (value) => _model = _model.copyWith(cpf: value),
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
                title: 'Gerar Boleto',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    print(_model);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
