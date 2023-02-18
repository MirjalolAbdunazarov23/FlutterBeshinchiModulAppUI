// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class PaymentWidget extends StatelessWidget {
//   final PaymentModel? payment;
//   const PaymentWidget({super.key,required this.payment});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//      elevation: 0,
//      color: Colors.transparent,
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       margin: EdgeInsets.zero,
//       child: Container(
//         padding: const EdgeInsets.all(18),
//         decoration: BoxDecoration(
//             color: Colors.white, borderRadius: BorderRadius.circular(20)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 54,
//               width: 54,
//               decoration: BoxDecoration(
//                   color: Color(payment.colorNumber!),
//                   borderRadius: BorderRadius.circular(15)),
//               child: Image.asset(payment.image!),
//             ),
//             Container(
//               width: double.infinity,
//               alignment: Alignment.center,
//               child: Text(
//                 '${payment.precent}%',
//                 style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.grey.withOpacity(.5)),
//               ),
//             ),
//             Text(
//               '${payment.name}',
//               style:TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.grey),
//             ),
//             Text(
//               '${payment.price}  € ',
//               style:TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.grey),
//             ),
//           ],
//         ),
//         )

//     );
//   }
// }
