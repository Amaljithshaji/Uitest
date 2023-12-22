import 'package:flutter/material.dart';

class Tabletz extends StatelessWidget {
  const Tabletz({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * 0.06,
            horizontal: MediaQuery.of(context).size.width * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "現在の獲得数 ",
                style: const TextStyle(
                  fontFamily: "Noto Sans JP",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  height: 20 / 14,
                ),
              ),
              TextSpan(
                text: "30 ",
                style: const TextStyle(
                  fontFamily: "Noto Sans JP",
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 20 / 28,
                ),
              ),
              TextSpan(
                text: "個",
                style: const TextStyle(
                  fontFamily: "Noto Sans JP",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 20 / 16,
                ),
              ),
            ]))
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
              height: MediaQuery.of(context).size.width * 0.02,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.01),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.2,
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
                            child: GridView.builder(
                                itemCount: 15,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 5,
                                        mainAxisSpacing:
                                            MediaQuery.of(context).size.height *
                                                0.01,
                                        crossAxisSpacing:
                                            MediaQuery.of(context).size.width *
                                                0.01),
                                itemBuilder: (context, index) =>
                                    Image.asset('assets/img/Group 199.png')),
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
              padding: const EdgeInsets.only(left: 20),
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
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Center(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                color: Colors.transparent,
                child: ListView.separated(
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.09,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                          padding: const EdgeInsets.symmetric(horizontal: 20),
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
    ]);
  }
}