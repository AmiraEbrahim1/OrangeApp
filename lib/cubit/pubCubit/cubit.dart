import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskyy/cubit/pubCubit/states.dart';
import 'package:taskyy/view/home_screen.dart';
import 'package:taskyy/model/newsModel.dart';
import 'package:taskyy/network/dio_helper.dart';
import 'package:taskyy/network/end_points.dart';
import 'package:taskyy/view/news.dart';
import 'package:taskyy/view/settings.dart';
import 'package:taskyy/view/settings_screen.dart';

class PubCubit extends Cubit<PubStates> {
  PubCubit() : super(PubInitial());

  //single instance
  static PubCubit get(context) => BlocProvider.of(context);
  int current_index = 0;
  void changeNav(index) {
    current_index = index;
    emit(ChangeState());
  }


  List<BottomNavigationBarItem> items=[

    const BottomNavigationBarItem(
        icon:Icon(Icons.home,),
        label:'Home'
    ),
    const BottomNavigationBarItem(
        icon:Icon(Icons.newspaper),
        label:'News'),
    const BottomNavigationBarItem(
        icon:Icon(Icons.settings),
        label:'Settings'),
  ];
  List<Widget>Screen = [
    HomeScreen(),
    News(),
    SettingsScreen(),
  ];
  bool isLoading = true;
  NewsModel? model = NewsModel();

   getData()  {
    emit(GetData());
    var token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTcsInJvbGUiOjQsImlhdCI6MTY2MzA1NTM4MSwiZXhwIjoxNzQ5NDU1MzgxfQ.Jh9uXSEmPfqvpUKu084M0Xhq5lXCPyox8WuuOS8ZzNc";
    DioHelper.getData(url: newsEndPoint, token: token).then(
          (value) {
        if (value.statusCode == 200) {
          model = NewsModel.fromJson(value.data);
          print(value.data);
          isLoading = false;
          emit(GetData());

        }
      },
    );
    emit(GetData());
  }
}
