import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskyy/components.dart';
import 'package:taskyy/cubit/pubCubit/states.dart';
import 'package:taskyy/cubit/registerCubit/states.dart';
import 'package:taskyy/model/gradeModel.dart';
import 'package:taskyy/login/login_screen.dart';
import 'package:taskyy/loginNetwork/sharedPref.dart';
import 'package:taskyy/network/dio_helper.dart';
import 'package:taskyy/network/end_points.dart';

import 'package:taskyy/model/registerModel.dart';
import 'package:taskyy/view/settings_screen.dart';
import 'package:taskyy/model/universityModel.dart';

class RegisterCubit extends Cubit<RegisterStates>{
  RegisterCubit():super(InitialState());
  static RegisterCubit get(context){
    return BlocProvider.of(context);
  }

  Future<dynamic> exitDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: Text('Logout'),
        content:Text("Are you sure ?") ,
        actions: [
          Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.deepOrange,
                width: 2,
              ),
            ),
            child: TextButton(
              onPressed: () {
                navigateTo(context, SettingsScreen());
              },
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
          SizedBox(width: 30),
          Container(
            height: 50,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(15)),
            width: 100,
            child: MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 15),
              color: Colors.orange[800],
              onPressed: () {
                RegisterCubit.get(context).logOut(context);
                CacheHelper.put(key: 'login', value:false );
              },
              child: Text(
                " Sure ",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
  String value3='Grade 1';
  void changeGrade(String value){
    value3=value;
    emit(ChangeGradeDropdownState());
  }
  String value2='AUC';
  void changeUniversity(String value){
    value2=value;
    emit(ChangeUniversityDropdownState());
  }
  String value1='Male';
  void changeGender(String value){
    value1=value;
    emit(ChangeGradeDropdownState());
  }

  void logOut(BuildContext context){
    login==false;
    emit(LogOut());
    navigateTo(context,LoginScreen() );
  }
  RegisterModel? dataModel;
  void userRegister({
    required String email,
    required String password,
    required String name,
    required String gender,
    required String phoneNumber,
    required String universityId,
    required String gradeId,


  }) {
    // print('loading');
    emit(RegisterLoadingState());
    DioHelper.postData(
        url: registerEndPoint,
        data: {
          'email': email,
          'password': password,
          'name': name,
          'gender': gender,
          'phoneNumber': phoneNumber,
          'universityId': universityId,
          'gradeId': gradeId,
        }).then((value) {
      dataModel = RegisterModel.fromJson(value.data);
      print(value.data);
      CacheHelper.putToken(key: 'token', value:dataModel!.data!..toString());
      token=CacheHelper.getvalToken(key: 'token')!;
      emit(RegisterSuccessState());
    });
  }

  bool isLoading = true;
  GradeModel? data = GradeModel();
  Future getGradeData() async {
    emit(UniversityGetData());
    var token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTcsInJvbGUiOjQsImlhdCI6MTY2MzA2NDA2NywiZXhwIjoxNzQ5NDY0MDY3fQ.bF4NAz87VIOeS7Qfc60QzUhORkNXPT2ssx6W6I0mcSA";
    DioHelper.getData(url: gradeEndPoint, token: token).then(
            (value) {
          if (value.statusCode == 200) {
            data = GradeModel.fromJson(value.data);
            print(value.data);
            isLoading = false;
            emit(GradeGetData());

          }
        });
    emit(GradeGetData());
  }

  bool isLoading2 = true;
  UniversityModel? data2 = UniversityModel();
  Future getUniversityData() async {
    emit(UniversityGetData());
    var token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTcsInJvbGUiOjQsImlhdCI6MTY2MzA2NDA2NywiZXhwIjoxNzQ5NDY0MDY3fQ.bF4NAz87VIOeS7Qfc60QzUhORkNXPT2ssx6W6I0mcSA";
    DioHelper.getData(url: universityEndPoint, token: token).then(
            (value) {
          if (value.statusCode == 200) {
            data2 = UniversityModel.fromJson(value.data);
            print(value.data);
            isLoading = false;
            emit(UniversityGetData());

          }
        });
    emit(UniversityGetData());
  }
  }