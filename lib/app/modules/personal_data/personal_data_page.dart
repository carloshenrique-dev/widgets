import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class PersonalDataPage extends StatelessWidget {
  const PersonalDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final halfCard = MediaQuery.of(context).size.width * 0.35;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados Pessoais'),
      ),
      body: Container(
        color: AppColors.iceWhite,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
              height: MediaQuery.of(context).size.height * 0.55,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  Card(
                    elevation: 5,
                    color: AppColors.white,
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 45, left: 20, right: 20, bottom: 0),
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            child: Row(
                              children: const [
                                Text(
                                  'Nome e Sobrenome',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.purpleBlue,
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(
                                  'Loren ipsum',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Color(0xFFEFEFF3),
                            thickness: 1,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            child: Row(
                              children: const [
                                Text(
                                  'E-mail',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.purpleBlue,
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(
                                  'Loren ipsum',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Color(0xFFEFEFF3),
                            thickness: 1,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            child: Row(
                              children: const [
                                Text(
                                  'Telefone',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.purpleBlue,
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(
                                  'Loren ipsum',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Color(0xFFEFEFF3),
                            thickness: 1,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            child: Row(
                              children: const [
                                Text(
                                  'Função/Cargo',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.purpleBlue,
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(
                                  'Loren ipsum',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Color(0xFFEFEFF3),
                            thickness: 1,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            child: Row(
                              children: [
                                const Text(
                                  'Senha',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.purpleBlue,
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
                                const Text(
                                  '********',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 40,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      minimumSize: Size.zero,
                                      padding: EdgeInsets.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    child: const Text(
                                      'Alterar',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.purpleBlue,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -30,
                    right: halfCard,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColors.white,
                          radius: 40,
                          child: Icon(
                            Icons.person_outlined,
                            size: 40,
                            color: AppColors.purpleBlue,
                          ),
                        ),
                        Positioned(
                          top: -18,
                          left: 50,
                          child: Container(
                            width: 40,
                            decoration: const BoxDecoration(
                              color: AppColors.purpleBlue,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.photo_camera_outlined,
                                size: 20,
                                color: AppColors.white,
                              ),
                              onPressed: () {
                                debugPrint('teste');
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Queremos saber mais sobre você!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 43,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.purpleBlue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text('Completar Cadastro'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
