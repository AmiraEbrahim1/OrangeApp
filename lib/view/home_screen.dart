import 'package:flutter/material.dart';
import 'package:taskyy/components.dart';
import 'package:taskyy/view/events_screen.dart';
import 'package:taskyy/view/final_screen.dart';
import 'package:taskyy/view/lectures.dart';
import 'package:taskyy/view/midterm.dart';
import 'package:taskyy/view/note_screen.dart';
import 'package:taskyy/view/section_screen.dart';
import 'package:taskyy/view/lecture_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // bottomNavigationBar: Container(
      //   height: height / 13,
      //   child: BottomAppBar(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Container(
      //           padding: EdgeInsetsDirectional.only(
      //             start: 5,
      //           ),
      //           width: width / 3,
      //           decoration: BoxDecoration(
      //             color: Colors.grey[100],
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           clipBehavior: Clip.antiAliasWithSaveLayer,
      //           child: ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //               elevation: 0.0,
      //               primary: Colors.grey[100],
      //             ),
      //             onPressed: () {},
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 Icon(
      //                   Icons.home_filled,
      //                   color: Colors.deepOrange,
      //                   size: 30,
      //                 ),
      //                 Text(
      //                   "Home",
      //                   style: TextStyle(
      //                     color: Colors.deepOrange,
      //                     fontSize: 18,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.account_box_outlined, size: 30),
      //         ),
      //         IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.settings_outlined, size: 30),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Orange",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      " Digital ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      " Center",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, LectureScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        backgroundImage: AssetImage(
                                          "icons/icons8-saddle-stitched-booklet-50.png",
                                        ),
                                        radius: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Lectures",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, SectionScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        backgroundImage: AssetImage(
                                          "icons/icons8-group-32.png",
                                        ),
                                        radius: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Sections",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, ExamsScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        backgroundImage: AssetImage(
                                          "icons/icons8-page-50.png",
                                        ),
                                        radius: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Midterms",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, FinalScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        backgroundImage: AssetImage(
                                          "icons/icons8-single-page-mode-50.png",
                                        ),
                                        radius: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Finals",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, EventsScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        backgroundImage: AssetImage(
                                          "icons/icons8-calendar-48.png",
                                        ),
                                        radius: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Events",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, NoteScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        backgroundImage: AssetImage(
                                          "icons/icons8-pages-48.png",
                                        ),
                                        radius: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Notes",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
