import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/custom_input_theme.dart';

class SensorCounter extends StatefulWidget {
  final TextEditingController? controller;

  const SensorCounter({required this.controller, Key? key}) : super(key: key);

  @override
  State<SensorCounter> createState() => _SensorCounterState();
}

class _SensorCounterState extends State<SensorCounter> {
  @override
  void initState() {
    super.initState();
    widget.controller!.text = "0"; // Setting the initial value for the field.
  }

  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Quantidade de Sensores',
            style: TextStyle(
              color: AppColors.purpleBlue,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: const Color(0xFFF1F2FB),
                    textStyle: const TextStyle(
                      color: AppColors.white,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (_counter > 0) {
                        _counter--;
                        widget.controller!.text = _counter.toString();
                      }
                    });
                  },
                  child: const Icon(
                    Icons.remove,
                    color: AppColors.purpleBlue,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                height: 55,
                child: CustomInputTheme(
                  focusedBorderColor: const Color(0xFFF1F2FB),
                  enabledBorderColor: const Color(0xFFF1F2FB),
                  disabledBorderColor: const Color(0xFFF1F2FB),
                  child: TextFormField(
                    validator: Validatorless.required('Insira o numero do CAR'),
                    textAlign: TextAlign.center,
                    controller: widget.controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: const Color(0xFFF1F2FB),
                    textStyle: const TextStyle(
                      color: AppColors.white,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                  ),
                  onPressed: () => setState(() {
                    _counter++;
                    widget.controller!.text = _counter.toString();
                  }),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.purpleBlue,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            'R\$${(_counter * 100.00).toStringAsFixed(2).replaceAll('.', ',')}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesomeIcons.calculator,
                    color: AppColors.purpleBlue,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Me ajude a calcular',
                    style: TextStyle(
                      color: AppColors.purpleBlue,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
