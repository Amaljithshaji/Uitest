import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text/Routes/routes.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Ui Test',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color(0xffF7F7F7),
      body: Center(
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Get.toNamed(RoutesClass.GetScreen1Route());
              },
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Colors.red
                ),
                child: Center(child: Text('Screen 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),)),
              ),
            ),
            SizedBox(height: 20,),
             InkWell(
              onTap: (){
                Get.toNamed(RoutesClass.GetScreen2Route());
              },
               child: Container(
                 width: 300,
                 height: 100,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Colors.blue
                ),
                 child: Center(child: Text('Screen 2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),)),
               ),
             ),
            SizedBox(height: 20,),
             InkWell(
              onTap: (){
                Get.toNamed(RoutesClass.GetScreen3Route());
              },
               child: Container(
                 width: 300,
                 height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Colors.green
                ),
                 child: Center(child: Text('Screen 3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),)),
               ),
             ),
            SizedBox(height: 20,),
            
          ],
        ),
      ),
    );
  }
}