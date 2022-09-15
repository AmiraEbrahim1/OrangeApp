import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taskyy/cubit/pubCubit/cubit.dart';
import 'package:taskyy/cubit/examCubit/cubit.dart';
import 'package:taskyy/cubit/faqcubit/cubit.dart';
import 'package:taskyy/cubit/lectureCubit/lectures_cubit.dart';
import 'package:taskyy/cubit/loginCubit/cubit.dart';
import 'package:taskyy/cubit/noteCubit/cubit.dart';
import 'package:taskyy/cubit/registerCubit/cubit.dart';
import 'package:taskyy/cubit/termsCUbit/cubit.dart';
import 'package:taskyy/login/login_screen.dart';
import 'package:taskyy/loginNetwork/sharedPref.dart';
import 'package:taskyy/view/midterm.dart';
import 'package:taskyy/view/home_screen.dart';
import 'package:taskyy/view/final_screen.dart';
import 'package:taskyy/network/dio_helper.dart';
import 'package:taskyy/view/news.dart';
import 'package:taskyy/view/register.dart';
import 'package:taskyy/view/splash.dart';
import 'package:taskyy/view/news_layout.dart';
import 'components.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  await CacheHelper.init();
  // late Widget home;
    login = CacheHelper.getval(key:'login')??false;
  print('amira${login}');
  if (login ==true) {
    home= NavLayout();
  } else {
    home =  LoginScreen();
  }
  runApp(MyApp(home: home!,login: login!));
}

class MyApp extends StatelessWidget {
  final bool  login ;//???
  final Widget home ;
  MyApp(

  {
required this.login,
required this.home
});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context)=> PubCubit()..getData(),),
        BlocProvider(create: (context) => LecturesCubit()..getLecData(),),
        BlocProvider(create: (context) => ExamsCubit()..getExamData(),),
        BlocProvider(create: (context) => RegisterCubit()..getGradeData()..getUniversityData(),),
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => NoteCubit()),
        BlocProvider(create: (context) => FaqCubit()..getFaqData()),
        BlocProvider(create: (context) => TermsCubit()..getTermData())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',

        theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor:Colors.white,
              type: BottomNavigationBarType.fixed,
              elevation: 30.0,
              selectedIconTheme:const IconThemeData(
                  color: Colors.deepOrange
              ),
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              selectedItemColor: Colors.deepOrange,
              unselectedItemColor: Colors.grey,
              unselectedLabelStyle:const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              showUnselectedLabels: true
          ),
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home:SplashScreen() ,
      ),
    );
  }
}


