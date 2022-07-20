import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class ConfigFarmFieldsPage extends StatefulWidget {
  const ConfigFarmFieldsPage({Key? key}) : super(key: key);

  @override
  State<ConfigFarmFieldsPage> createState() => _ConfigFarmFieldsPageState();
}

class _ConfigFarmFieldsPageState extends State<ConfigFarmFieldsPage> {
  final TextEditingController _numberCar = TextEditingController();
  bool _allPlots = false;
  bool _allCultures = false;

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<Object>>? items;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.iceWhite,
        appBar: AppBar(
          title: const Text('Área de Cultivo'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: const BoxDecoration(
                      color: AppColors.iceWhite,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      color: AppColors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Fazenda',
                            style: TextStyle(
                              fontSize: 17,
                              color: AppColors.purpleBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Gloriosa',
                            style: TextStyle(
                              fontSize: 22,
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Numero do CAR',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: AppColors.purpleBlue,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: _numberCar,
                                validator: Validatorless.required(
                                    'Insira o numero do CAR'),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'DigiteAqui',
                                ),
                              ),
                              const SizedBox(height: 25),
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: const Color(0xFFF1F2FB),
                                    textStyle: const TextStyle(
                                      color: AppColors.white,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.image_outlined,
                                        color: AppColors.purpleBlue,
                                      ),
                                      Text(
                                        'Buscar Imagem...',
                                        style: TextStyle(
                                          color: AppColors.purpleBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 25),
                              const Text(
                                'Tipo de solo',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: AppColors.purpleBlue,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              DropdownButtonFormField(
                                elevation: 0,
                                isExpanded: true,
                                icon: const Icon(
                                  FontAwesomeIcons.angleDown,
                                  color: AppColors.purpleBlue,
                                ),
                                hint: const Text(
                                  'Latossolo',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                items: items,
                                onChanged: (select) => {},
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Checkbox(
                                    checkColor: AppColors.white,
                                    activeColor: AppColors.purpleBlue,
                                    value: _allPlots,
                                    onChanged: (value) => {
                                      setState(() {
                                        _allPlots = value!;
                                      })
                                    },
                                  ),
                                  const Text(
                                    'Todos os talhões tem o mesmo tipo de solo',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 25),
                              const Text(
                                'Tipo de cultura',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: AppColors.purpleBlue,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              DropdownButtonFormField(
                                elevation: 0,
                                isExpanded: true,
                                icon: const Icon(
                                  FontAwesomeIcons.angleDown,
                                  color: AppColors.purpleBlue,
                                ),
                                hint: const Text(
                                  'Milho',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                items: items,
                                onChanged: (select) => {},
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Checkbox(
                                    checkColor: AppColors.white,
                                    activeColor: AppColors.purpleBlue,
                                    value: _allCultures,
                                    onChanged: (value) => {
                                      setState(() {
                                        _allCultures = value!;
                                      })
                                    },
                                  ),
                                  const Text(
                                    'Todos os talhões tem o mesmo tipo de cultura',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 25),
                              SizedBox(
                                height: 50,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    primary: AppColors.purpleBlue,
                                    side: const BorderSide(
                                      color: AppColors.purpleBlue,
                                      width: 1,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'Configurar talhões',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: AppColors.purpleBlue,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Icon(
                                            FontAwesomeIcons.angleRight,
                                            color: AppColors.purpleBlue,
                                            size: 18,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
