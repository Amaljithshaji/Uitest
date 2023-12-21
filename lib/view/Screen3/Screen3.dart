import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text/view/Screen3/Texter.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  bool values = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              decoration: ShapeDecoration(
                  shape: CircleBorder(), color: Color(0xfff4f2f2)),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xffB8B8B8),
              ),
            ),
          ),
        ),
        title: Text(
          "店舗プロフィール編集",
          style: const TextStyle(
            fontFamily: "Noto Sans JP",
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(0xff4b4948),
            height: 22 / 15,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                child: Image.asset('assets/img/notifications_none 1.png'),
              ),
              Positioned(
                  top: 12,
                  left: 22,
                  child: Stack(children: [
                    Image.asset('assets/img/Ellipse 2.png'),
                    Positioned(
                      top: 4,
                      left: 3,
                      child: Text(
                        "99+",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 6.951724052429199,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          height: 6.620689868927002 / 6.951724052429199,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ]))
            ],
          ),
        ],
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "店舗名",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Texter(
              text: "Mer キッチン",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "代表担当者名",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Texter(
              text: "林田　絵梨花",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "店舗電話番号",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Texter(
              text: "123 - 4567 8910",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "店舗住所",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Texter(
              text: "大分県豊後高田市払田791-13",
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amber,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/img/snazzy-image (1) 1.png',
                        ))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.8,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "店舗外観",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "*",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffEB5308),
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "（最大3枚まで）",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/pic.png'))),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/pic.png'))),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/img/outline-image-1 1.png'),
                              Text(
                                "写真を追加",
                                style: const TextStyle(
                                  fontFamily: "Noto Sans JP",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff9c9896),
                                  height: 20 / 12,
                                ),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "店舗内観",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "*",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffEB5308),
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "（1枚〜3枚ずつ追加してください）",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/pic2.png'))),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/pic2.png'))),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/pic2.png'))),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "料理写真",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "*",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffEB5308),
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "（1枚〜3枚ずつ追加してください）",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/pic3.png'))),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/pic4.png'))),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/pic5.png'))),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "メニュー写真",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "*",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffEB5308),
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "（1枚〜3枚ずつ追加してください）",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 18 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/pic6.png'))),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/pic7.png'))),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          width: 120,
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/pic8.png'))),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "営業時間",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 216, 214, 214),
                            width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "10 : 00",
                            style: const TextStyle(
                              fontFamily: "Noto Sans JP",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff454545),
                              height: 24 / 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(Icons.keyboard_arrow_down),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "〜",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4b4948),
                      height: 24 / 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 216, 214, 214),
                            width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "20 : 00",
                              style: const TextStyle(
                                fontFamily: "Noto Sans JP",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff454545),
                                height: 24 / 16,
                              ),
                              textAlign: TextAlign.left,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(Icons.keyboard_arrow_down),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "ランチ時間",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 216, 214, 214),
                            width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "11 : 00 ",
                              style: const TextStyle(
                                fontFamily: "Noto Sans JP",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff454545),
                                height: 24 / 16,
                              ),
                              textAlign: TextAlign.left,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(Icons.keyboard_arrow_down),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "〜",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4b4948),
                      height: 24 / 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 216, 214, 214),
                            width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "15 : 00",
                              style: const TextStyle(
                                fontFamily: "Noto Sans JP",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff454545),
                                height: 24 / 16,
                              ),
                              textAlign: TextAlign.left,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(Icons.keyboard_arrow_down),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "定休日",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "月",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "火",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "水",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "木",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "金",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "土",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "日",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "祝",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "料理カテゴリー",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                width: 220,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: Border.all(
                        color: Color.fromARGB(255, 216, 214, 214), width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "料理カテゴリー選択",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffc7c4c0),
                            height: 24 / 16,
                          ),
                          textAlign: TextAlign.left,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.keyboard_arrow_down),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "料理カテゴリー",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 216, 214, 214),
                            width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "¥ 1,000",
                              style: const TextStyle(
                                fontFamily: "Noto Sans JP",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff454545),
                                height: 24 / 16,
                              ),
                              textAlign: TextAlign.left,
                            )),
                      ],
                    ),
                  ),
                  Text(
                    "〜",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4b4948),
                      height: 24 / 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 216, 214, 214),
                            width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "¥ 2,000",
                              style: const TextStyle(
                                fontFamily: "Noto Sans JP",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff454545),
                                height: 24 / 16,
                              ),
                              textAlign: TextAlign.left,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "キャッチコピー",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Texter(text: "美味しい！リーズナブルなオムライスランチ！"),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "座席数",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Texter(text: "40席"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "喫煙席",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "有",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "無",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "有",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "無",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "来店プレゼント",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "有（最大３枚まで）",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 24 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Checkbox(
                        value: values,
                        activeColor: Color(0xffEB5308),
                        onChanged: (value) {
                          setState(() {
                            values = value!;
                          });
                        },
                      ),
                      Text(
                        "無",
                        style: const TextStyle(
                          fontFamily: "Noto Sans JP",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4b4948),
                          height: 23 / 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.amber,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/img/pic9.png'))),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    width: 120,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.amber,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/img/pic10.png'))),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    width: 120,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.amber,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/img/pic11.png'))),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.close,
                          color: Colors.grey.shade300,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "来店プレゼント名",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "*",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffEB5308),
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Texter(text: "いちごクリームアイスクリーム, ジュース"),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber),
                child: Center(
                  child: Text(
                    "編集を保存",
                    style: const TextStyle(
                      fontFamily: "Noto Sans JP",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      height: 20 / 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
