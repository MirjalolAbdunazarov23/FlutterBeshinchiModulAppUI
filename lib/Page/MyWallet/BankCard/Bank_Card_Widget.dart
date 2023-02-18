// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class BankCardWidget extends StatelessWidget {
//   final BankCardModel? bankCardModel;
//   const BankCardWidget({super.key, required this.bankCardModel});
  
 

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 0,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//       margin: EdgeInsets.zero,
//       color: Colors.transparent,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(25),
//         child: Stack(
//           children: [
//             //*------Card Body
//             SizedBox(
//               height: 200,
//               width: 330,
//               child: Container(
//                 padding:
//                     EdgeInsets.only(left: 17, top: 24, bottom: 17, right: 16),
//                 decoration: BoxDecoration(
//                   color: Color(bankCardModel!.colorCode!),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 70,
//                       width: double.infinity,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             height: 50,
//                             width: 70,
//                             decoration: BoxDecoration(
//                                 color: Color(0xffD1D9D9),
//                                 borderRadius: BorderRadius.circular(5)),
//                           ),
//                           SizedBox(
//                             height: 26,
//                             child: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 CircleAvatar(
//                                   radius: 13,
//                                   backgroundColor:
//                                       Color(0xffC4C4C4).withOpacity(.5),
//                                 ),
//                                 Transform.translate(
//                                   offset: Offset(13, 0),
//                                   child: CircleAvatar(
//                                     radius: 13,
//                                     backgroundColor:
//                                         Color(0xffC4C4C4).withOpacity(.5),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Text(
//                       'Balans',
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                     Text(
//                       '${bankCardModel!}\$',
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             //*------Border Widget
//            PositionedWidget(-27,-59),
//            PositionedWidget(-27,-93),
//            PositionedWidget(-72,-36),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget PositionedWidget(double bottom,double right) {
//   return Positioned(
//       bottom: bottom,
//       right: right,
//       child: Container(
//         height: 115,
//         width: 115,
//         decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             border: Border.all(width: 2, color: Colors.white)),
//       ));
// }
