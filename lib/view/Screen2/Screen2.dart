import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Layouts/Desktop.dart';
import 'Layouts/Mobile.dart';
import 'Layouts/Tablet.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA8B1FF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffA8B1FF),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              decoration: ShapeDecoration(
                  shape: CircleBorder(), color: Color(0xff949EFF)),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: Text(
          "スタンプカード詳細",
          style: const TextStyle(
            fontFamily: "Noto Sans JP",
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            height: 20 / 14,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Image.asset('assets/img/minus-circle.png'),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xffA8B1FF), Colors.white],
          ),
        ),
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType ==
                DeviceScreenType.desktop) {
              // Use desktop layout
              return buildDesktopLayout();
            } else if (sizingInformation.deviceScreenType ==
                DeviceScreenType.tablet) {
              // Use tablet layout
              return buildTabletLayout();
            } else {
              // Use mobile layout
              return buildMobileLayout();
            }
          },
        ),
      ),
    );
  }

  Widget buildDesktopLayout() {
    // Customize UI for desktop layout
    return Desktop(context: context);
  }

  Widget buildTabletLayout() {
    // Customize UI for tablet layout
    return Tabletz(context: context);
  }

  Widget buildMobileLayout() {
    // Customize UI for mobile layout
    return Mobilez(context: context);
  }
}






