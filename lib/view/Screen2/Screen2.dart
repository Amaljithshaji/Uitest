import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            onTap: (){
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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          child: Row(
            children: [
              Text(
                "Mer キッチン",
                style: const TextStyle(
                  fontFamily: "Noto Sans JP",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 20 / 16,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                width: 120,
              ),
              Text(
                "現在の獲得数 ",
                style: const TextStyle(
                  fontFamily: "Noto Sans JP",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  height: 20 / 14,
                ),
                textAlign: TextAlign.right,
              ),
              Text(
                "30 ",
                style: const TextStyle(
                  fontFamily: "Noto Sans JP",
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 20 / 28,
                ),
                textAlign: TextAlign.right,
              ),
              Text(
                "個",
                style: const TextStyle(
                  fontFamily: "Noto Sans JP",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 20 / 16,
                ),
                textAlign: TextAlign.right,
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  color: Colors.transparent,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade400,
                                    offset: const Offset(
                                      5.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: const Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: GridView.builder(
                                    itemCount: 15,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 5,
                                            mainAxisSpacing: 5,
                                            crossAxisSpacing: 5),
                                    itemBuilder: (context, index) => Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Image.asset(
                                              'assets/img/Group 199.png'),
                                        )),
                              ),
                            ),
                          )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Text(
                      "2 / 2枚目",
                      style: const TextStyle(
                        fontFamily: "Noto Sans JP",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff454545),
                        height: 20 / 12,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "スタンプ獲得履歴",
                  style: const TextStyle(
                    fontFamily: "Noto Sans JP",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff454545),
                    height: 20 / 14,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  color: Colors.transparent,
                  child: ListView.separated(
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                              width: double.infinity,
                              height: 100,
                              color: Colors.transparent,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "2021 / 11 / 18",
                                      style: const TextStyle(
                                        fontFamily: "Noto Sans JP",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffb5b5b5),
                                        height: 20 / 12,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "スタンプを獲得しました。",
                                            style: const TextStyle(
                                              fontFamily: "Noto Sans JP",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff454545),
                                              height: 20 / 14,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "1 個",
                                            style: const TextStyle(
                                              fontFamily: "Noto Sans JP",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff454545),
                                              height: 20 / 14,
                                            ),
                                            textAlign: TextAlign.right,
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                            ),
                      ),
                      separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                              thickness: 4,
                              color: Color(0xffE7E7E7),
                            ),
                      ),
                      itemCount: 10),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
