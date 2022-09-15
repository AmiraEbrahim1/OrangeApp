import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskyy/cubit/lectureCubit/lectures_state.dart';
import 'package:taskyy/cubit/pubCubit/states.dart';
import 'package:taskyy/model/model.dart';
import 'package:taskyy/network/dio_helper.dart';
import 'package:taskyy/network/end_points.dart';



class LecturesCubit extends Cubit<LecturesState> {
  LecturesCubit() : super(LecturesInitial());

  //single instance
  static LecturesCubit get(context) => BlocProvider.of(context);
  bool isLoading = true;
  LectureModel? data = LectureModel();

  Future getLecData() async {
    emit(LectureGetData());
    var token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTcsInJvbGUiOjQsImlhdCI6MTY2MzA2NDA2NywiZXhwIjoxNzQ5NDY0MDY3fQ.bF4NAz87VIOeS7Qfc60QzUhORkNXPT2ssx6W6I0mcSA";
    DioHelper.getData(url: lectureEndPoint, token: token).then(
      (value) {
        if (value.statusCode == 200) {
          data = LectureModel.fromJson(value.data);
          print(value.data);
          isLoading = false;
          emit(LectureGetData());

        }
      },
    );
    emit(LectureGetData());
  }
}
