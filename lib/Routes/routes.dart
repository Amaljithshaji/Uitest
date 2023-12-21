import 'package:get/get.dart';
import 'package:text/view/Screen1/Screen1.dart';
import 'package:text/view/Screen2/Screen2.dart';
import 'package:text/view/Screen3/Screen3.dart';
import 'package:text/view/home/Home.dart';

class RoutesClass{

  static String home = '/';
  static String screen1 ='/screen1';
  static String screen2 ='/screen2';
  static String screen3 ='/screen3';


  static String GetHomeRoute()=>home;
  static String GetScreen1Route()=>screen1;
  static String GetScreen2Route()=>screen2;
  static String GetScreen3Route()=>screen3;

  static List<GetPage> routes = [
   GetPage(name: home, page: ()=>Home_Screen()),
   GetPage(name: screen1, page: ()=>Screen1()),
   GetPage(name: screen2, page: ()=>Screen2()),
   GetPage(name: screen3, page: ()=>Screen3()),

  ];
}