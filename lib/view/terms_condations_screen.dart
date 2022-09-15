import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:simple_html_css/simple_html_css.dart';
// import 'package:taskyy/components.dart';
// import 'package:taskyy/cubit/termsCUbit/cubit.dart';
// import 'package:taskyy/cubit/termsCUbit/states.dart';
// import 'package:taskyy/news_layout.dart';
//
// class TermsScreen extends StatelessWidget {
//   String? T1;
//
//   @override
//   Widget build(BuildContext context) {
//     TermsCubit myCubit = TermsCubit.get(context);
//     String? htmlContent = myCubit.data!.data!.terms;
//     return BlocConsumer<TermsCubit, TermssState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//            String htmlContent = """${myCubit.data!.data!.terms} """;
//
//           final TextSpan textSpan = HTML.toTextSpan(
//             context,
//             htmlContent,
//             linksCallback: (dynamic link) {
//               debugPrint('You clicked on ${link.toString()}');
//             },
//             // as name suggests, optionally set the default text style
//             defaultTextStyle: TextStyle(color: Colors.grey[700]),
//             overrideStyle: <String, TextStyle>{
//               'p': const TextStyle(fontSize: 17.3),
//               'a': const TextStyle(wordSpacing: 2),
//               // specify any tag not just the supported ones,
//               // and apply TextStyles to them and/override them
//             },
//           );
//
//           return Scaffold(
//               backgroundColor: Colors.grey[100],
//               appBar: AppBar(
//                 elevation: 0.0,
//                 backgroundColor: Colors.white,
//                 centerTitle: true,
//                 leading: IconButton(
//                   icon: Icon(
//                     Icons.arrow_back_ios,
//                     color: Colors.deepOrange,
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     navigateTo(context, NavLayout());
//                   },
//                 ),
//                 title: Text(
//                   "Terms & Condations",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 25),
//                 ),
//               ),
//               body: RichText(text: textSpan)
//
//               // or use HTML.toRichText()
//
//               );
//         });
//   }
// // Widget html(Data datum)=>Html
// }
