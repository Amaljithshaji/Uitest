import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'layouts/Desktop.dart';
import 'layouts/Mobile.dart';
import 'layouts/Tablet.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {},
          child: Icon(Icons.location_pin),
        ),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.07,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('assets/img/search.png'),
                  Text(
                    "さがす",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfffaaa14),
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/img/office bag.png'),
                  Text(
                    "お仕事",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff303030),
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 45,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffFAAA14),
                            Color(0xffFFD78D)
                          ], // Set your desired gradient colors
                        ),
                        shape: CircleBorder(),
                       ),
                    child: Center(
                        child: Image.asset(
                      'assets/img/scan-line.png',
                      fit: BoxFit.contain,
                    )),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/img/typing.png'),
                  Text(
                    "チャット",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff303030),
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/img/account.png'),
                  Text(
                    "マイページ",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff303030),
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xffFFFFFF),
        body: ResponsiveBuilder(
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
    return Tablet(context: context);
  }

  Widget buildMobileLayout() {
    // Customize UI for mobile layout
    return Mobile(context: context);
  }
}
