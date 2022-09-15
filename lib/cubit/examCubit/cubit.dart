
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskyy/cubit/examCubit/states.dart';
import 'package:taskyy/model/examModel.dart';
import 'package:taskyy/network/dio_helper.dart';
import 'package:taskyy/network/end_points.dart';

class ExamsCubit extends Cubit<ExamsState> {
  ExamsCubit() : super(ExamsInitial());

  //single instance
  static ExamsCubit get(context) => BlocProvider.of(context);
  bool isLoading = true;
  ExamModel? data = ExamModel();
  List<Data> finalList=[];
  Future getExamData() async {
    emit(ExamsGetData());
    var token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTcsInJvbGUiOjQsImlhdCI6MTY2MzA2NDA2NywiZXhwIjoxNzQ5NDY0MDY3fQ.bF4NAz87VIOeS7Qfc60QzUhORkNXPT2ssx6W6I0mcSA";
    DioHelper.getData(url: examsEndPoint, token: token).then(
          (value) {
        if (value.statusCode == 200) {
          data = ExamModel.fromJson(value.data);
          print(value.data);
          isLoading = false;
          data!.data!.forEach((element) {
              finalList.add(element);
              print(element.Final);
          });
            print('mimi${finalList[0].id}');

          emit(ExamsGetData());

            }
              });
    emit(ExamsGetData());
  }
        }