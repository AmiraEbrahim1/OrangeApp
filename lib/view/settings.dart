// import 'package:flutter/material.dart';
// class Settings extends StatelessWidget {
//   const Settings({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double width=MediaQuery.of(context).size.width;
//     double height=MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//         child: Column(
//           children: [
//             SizedBox(
//               height: height/20,
//             ),
//             Text('Settings',style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 35
//             ),),
//             SizedBox(
//           height: 50,
//         ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20.0),
//               child: Row(
//                 children: [
//                   Text(('FAQ'),style: TextStyle(
//                       fontSize: 23
//                   ),),
//                   Spacer(),
//                   Icon(Icons.arrow_forward_ios_outlined,size: 30,)
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.black12,
//               height: 2,
//               width: double.infinity,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20.0),
//               child: Row(
//                 children: [
//                   Text(('Terms &Conditions'),style: TextStyle(
//                       fontSize: 23
//                   )),
//                   Spacer(),
//                   Icon(Icons.arrow_forward_ios_outlined,size: 30)
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.black12,
//               height: 2,
//               width: double.infinity,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 15.0),
//               child: Row(
//                 children: [
//                   Text(('Our Parteners'),style: TextStyle(
//           fontSize: 23
//     )),
//                   Spacer(),
//                   Icon(Icons.arrow_forward_ios_outlined,size: 30)
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.black12,
//               height: 2,
//               width: double.infinity,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 15.0),
//               child: Row(
//                 children: [
//                   Text(('Support'),style: TextStyle(
//           fontSize: 23
//     )),
//                   Spacer(),
//                   Icon(Icons.arrow_forward_ios_outlined,size: 30)
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.black12,
//               height: 2,
//               width: double.infinity,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 15.0),
//               child: Row(
//                 children: [
//                   Text(('Log out'),style: TextStyle(
//                       fontSize: 23
//                   )),
//                   Spacer(),
//                   Icon(Icons.arrow_forward_ios_outlined,size: 30)
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
