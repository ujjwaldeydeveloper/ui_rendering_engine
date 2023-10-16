// import 'package:flutter/material.dart';
// import 'package:banner_image/banner_image.dart';
// class BannerScreen extends StatefulWidget {
//   const BannerScreen({Key? key}) : super(key: key);

//   @override
//   State<BannerScreen> createState() => _BannerScreenState();
// }

// class _BannerScreenState extends State<BannerScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var list = 
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             BannerImage(
//               padding: const EdgeInsets.only(),
//               itemLength: list.length,
//               imageUrlList: list,
//               selectedIndicatorColor: Colors.red,
//               autoPlay: true,
//               children: List.generate(list.length, (index) => Image.asset(
//                 list[index],
//                 fit: BoxFit.cover,
//               ),),
//               onTap: (int index) {
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                   content: Text('On Tap' + index.toString()),
//                 ));
//               },
//             ),
//             const SizedBox(height: 50),
//             BannerImage(
//               itemLength: list.length,
//               children: List.generate(list.length, (index) => Image.asset(
//                 list[index],
//                 fit: BoxFit.cover,
//               ),),
//               selectedIndicatorColor: Colors.red,
//               autoPlay: true,
//               borderRadius: BorderRadius.circular(8),
//               onTap: (int index) {
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                   content: Text('On Tap' + index.toString()),
//                 ));
//               },
//             ),
//             const SizedBox(height: 50),
//             BannerImage(
//               itemLength: list.length,
//               children: List.generate(list.length, (index) => Image.asset(
//                 list[index],
//                 fit: BoxFit.cover,
//               ),),
//               borderRadius: BorderRadius.circular(8),
//               selectedIndicatorColor: Colors.red,
//               onTap: (int index) {
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                   content: Text('On Tap' + index.toString()),
//                 ));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }