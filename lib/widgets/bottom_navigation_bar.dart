import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: AppColors.blue,
      selectedItemColor: AppColors.green,
      items: const [
        BottomNavigationBarItem(
          label: 'Praça',
          icon: Icon(
            Icons.park,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Leitura',
          icon: Icon(
            Icons.graphic_eq,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Comunidade',
          icon: Icon(
            Icons.people_alt,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Alertas',
          icon: Icon(
            Icons.alarm_outlined,
          ),
        ),
      ],
      currentIndex: currentIndex,
      onTap: (valeu)=> setState(()=> currentIndex = valeu),
    );
  }
}
