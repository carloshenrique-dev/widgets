import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/widgets/bottom_sheet_header.dart';

class BottomSheetView {
  void showBottomSheetView(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BottomSheetHeader(title: 'Visualizar'),
                Row(
                  children: const [
                    Text('Fazenda'),
                  ],
                ),
                Row(),
                Row(),
              ],
            ),
          ),
        );
      },
    );
  }
}

// class BottomSheetView extends StatelessWidget {
//   const BottomSheetView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;

//     return ExpansionTile(
//       iconColor: AppColors.purpleBlue,
//       collapsedIconColor: AppColors.purpleBlue,
//       title: const Text(
//         'Visualizar:',
//         style: TextStyle(color: AppColors.grey),
//       ),
//       subtitle: RichText(
//         text: const TextSpan(
//           text: 'Fazenda Fortim - Talhão Santa Ana - Sensor 02',
//           style: TextStyle(
//             color: AppColors.purpleBlue,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       onExpansionChanged: (value) {
//         showModalBottomSheet(
//           context: context,
//           builder: (context) {
//             return Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(15),
//                   topRight: Radius.circular(15),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8),
//                 child: Column(
//                   children: const [],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
