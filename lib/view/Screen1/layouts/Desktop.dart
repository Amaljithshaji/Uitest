import 'package:flutter/material.dart';

import '../../../Components/Imagedata.dart';
import '../../../Components/data.dart';

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
        
            Container(
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height* 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 203, 202, 202)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Center(
                        child: Text(
                          "北海道, 札幌市",
                          style: const TextStyle(
                            fontFamily: "Noto Sans JP",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff303030),
                            height: 11 / 12,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  Image.asset('assets/img/Filter_icon.png'),
                  Image.asset('assets/img/Vector.png')
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height* 0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height* 0.03,
              decoration: BoxDecoration(
                
                gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xffFAAA14), Color(0xffFFD78D)], // Set your desired gradient colors
          ),
              ),
              child: Center(
                child: Text(
                  "2022年 5月 26日（木）",
                  style: const TextStyle(
                    fontFamily: "Noto Sans JP",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff303030),
                    height: 11 / 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height* 0.20,
                color: Colors.transparent,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Data.dayz.length,
                    itemBuilder: (context, index) {
                      final isfirst = index ==0;
                      final _color = isfirst ? Color(0xffFAAA14) : Colors.white;
                      final _Color1 = isfirst? Colors.white : Colors.black;
                      return  Padding(
                          padding:  EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height * 0.01, horizontal: 20),
                          child: Container(
                            width: 50,
                            height: MediaQuery.of(context).size.height* 0.04,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _color),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    Data.day[index],
                                    style:  TextStyle(
                                      fontFamily: "Noto Sans JP",
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: _Color1,
                                      height: 20 / 17,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    Data.dayz[index],
                                    style:  TextStyle(
                                      fontFamily: "Noto Sans JP",
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: _Color1,
                                      height: 20 / 17,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ]),
                          ),
                        );
                    })),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height* 0.01,
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height* 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFFFFFF),
              ),
              child: ListView.builder(
                itemCount: Imagedata.images.length,
                itemBuilder: (context, index) => Padding(
                  padding:
                     EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height* 0.01, horizontal: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(Imagedata.images[index]))),
                          child: Padding(
                            padding:  EdgeInsets.only(
                                bottom: MediaQuery.of(context).size.height *0.05, top: MediaQuery.of(context).size.height *0.2,right: MediaQuery.of(context).size.width *0.7 ),
                            child: Container(
                              width: MediaQuery.of(context).size.width *0.1,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffFF6262),
                              ),
                              child: Center(
                                child: Text(
                                  "本日まで",
                                  style: const TextStyle(
                                    fontFamily: "Noto Sans JP",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height* 0.01
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height* 0.05,
                            color: Colors.white,
                            child: Text(
                              "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
                              style: const TextStyle(
                                fontFamily: "Noto Sans JP",
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff303030),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(
                              horizontal: 20, vertical: MediaQuery.of(context).size.height* 0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.height* 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xfffdf7ec),
                                ),
                                child: Center(
                                  child: Text(
                                    "介護付き有料老人ホーム",
                                    style: const TextStyle(
                                      fontFamily: "Noto Sans JP",
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xfffaaa14),
                                      height: 11 / 10,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Text(
                                "¥ 6,000",
                                style: const TextStyle(
                                  fontFamily: "Noto Sans JP",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff303030),
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 20, top: MediaQuery.of(context).size.height* 0.01),
                          child: Text(
                            "5月 31日（水）08 : 00 ~ 17 : 00",
                            style: const TextStyle(
                              fontFamily: "Noto Sans JP",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff303030),
                              height: 14 / 12,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Text(
                            "北海道札幌市東雲町3丁目916番地17号",
                            style: const TextStyle(
                              fontFamily: "Noto Sans JP",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff303030),
                              height: 14 / 12,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Text(
                            "交通費 300円",
                            style: const TextStyle(
                              fontFamily: "Noto Sans JP",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff303030),
                              height: 14 / 12,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "住宅型有料老人ホームひまわり倶楽部",
                                style: const TextStyle(
                                  fontFamily: "Noto Sans JP",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff303030),
                                  height: 14 / 12,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Icon(
                                Icons.favorite_border_outlined,
                                color: Color(0xff30303026),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height* 0.03,
            ),
          ],
        );
  }
}
