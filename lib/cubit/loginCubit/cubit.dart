import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taskyy/components.dart';
import 'package:taskyy/cubit/loginCubit/states.dart';
import 'package:taskyy/model/loginModel.dart';
import 'package:taskyy/loginNetwork/sharedPref.dart';
import 'package:taskyy/network/dio_helper.dart';
import 'package:taskyy/network/end_points.dart';
import 'package:taskyy/view/news_layout.dart';

class LoginCubit extends Cubit<LoginStates> {
   LoginCubit():super(LoginInitialState());
  static LoginCubit get(context){
    return BlocProvider.of(context);
  }
  LoginModel? loginModel;

  void userLogin({
     required String email,
     required String password,
    BuildContext? context
  })
  {
    emit(LoginLoadingState());

    DioHelper.postData(
      url: loginEndPoint,
      data:
      {
        'email': email,
        'password': password,
      },
    ).then((value)
    {
      print(value.data);
      loginModel = LoginModel.fromJson(value.data);
      CacheHelper.put(key: 'login', value: true);
      navigateTo(context, NavLayout());
      emit(LoginSuccessState(loginModel!));
    }).catchError((error)
    {
      print(error.toString());
      emit(LoginErrorState(error.toString()));
    });
  }

}