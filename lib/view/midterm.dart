import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskyy/components.dart';
import 'package:taskyy/cubit/examCubit/cubit.dart';
import 'package:taskyy/cubit/examCubit/states.dart';
import 'package:taskyy/model/examModel.dart';
import 'package:taskyy/view/home_screen.dart';

class ExamsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ExamsCubit myCubit =  ExamsCubit.get(context);
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return BlocConsumer< ExamsCubit, ExamsState>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.deepOrange,
                size: 30,
              ),
              onPressed: () {
                popTo(context,HomeScreen() );
              },
            ),
            title: Center(
              child: Text(
                "Midterms",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_alt,
                    color: Colors.deepOrange,
                    size: 35,
                  ))
            ],
          ),
          body:myCubit.isLoading == true? Center(child: Text("Loading .. ")):
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 20),
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) =>
                  Padding(padding: EdgeInsets.all(5)),
              itemBuilder: (context, index) =>buildlectureItem(width , height,myCubit.data!.data![index]),
              itemCount: myCubit.data!.data!.length,
            ),
          ),
        );
      },
    );
  }
  Widget buildlectureItem (var height ,var width,Data datum,)=> Expanded(
    child: Container(
      height: height / 3,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            start: width / 20, end: width / 20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25) ,
              color: Colors.white) ,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Card(
            elevation: 0.0,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${datum.examSubject}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      Row(
                        children: [
                          Icon(
                            Icons.timer_rounded,
                            color: Colors.black,
                          ),
                          Text(
                            "${datum.examStartTime}",
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Lecture Day",
                            style: TextStyle(
                              color: Colors.grey[500],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.black,
                              ),
                              Text("${datum.examDate}")
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Start Time",
                            style: TextStyle(
                              color: Colors.grey[500],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                color: Colors.green[200],
                              ),
                              Text("${datum.examStartTime}")
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "End Time",
                            style: TextStyle(
                              color: Colors.grey[500],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                color: Colors.red[100],
                              ),
                              Text("${datum.examEndTime}")
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),)
      ,
    )
    ,
  );
}
// class FinalScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery
//         .of(context)
//         .size
//         .width;
//     var height = MediaQuery
//         .of(context)
//         .size
//         .height;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.deepOrange,
//             size: 30,
//           ),
//           onPressed: () {},
//         ),
//         title: Center(
//           child: Text(
//             "Finals",
//             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
//           ),
//         ),
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.filter_alt,
//                 color: Colors.deepOrange,
//                 size: 35,
//               ))
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsetsDirectional.only(top: 20),
//         child: ListView.separated(
//           shrinkWrap: true,
//           separatorBuilder: (context, index) =>
//               Padding(padding: EdgeInsets.all(5)),
//           itemBuilder: (context, index) =>buildFinalItem(width:width ,height : height),
//           itemCount: 10,
//         ),
//       ),
//     );
//   }
// }
