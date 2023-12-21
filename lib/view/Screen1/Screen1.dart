import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
     DateTime? _selectedDate;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.location_pin),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 125,
        color: Colors.transparent,
        child: Stack(
          children: [
            Positioned(
              top: 50,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
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
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xfffaaa14),
                                height: 18 / 8,
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
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff303030),
                                height: 18 / 8,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 40,
                              height: 27,
                              decoration: ShapeDecoration(
                                shape: CircleBorder(),
                              ),
                            ),
                            Text(
                              "打刻する",
                              style: const TextStyle(
                                fontFamily: "Noto Sans JP",
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff303030),
                                height: 18 / 8,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/img/typing.png'),
                            Text(
                              "チャット",
                              style: const TextStyle(
                                fontFamily: "Noto Sans JP",
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff303030),
                                height: 18 / 8,
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
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff303030),
                                height: 18 / 8,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 148,
              bottom: 40,
              child: Container(
                width: 75,
                height: 75,
                decoration:
                    ShapeDecoration(shape: CircleBorder(), color: Colors.red),
                child: Center(
                    child: Image.asset(
                  'assets/img/scan-line.png',
                )),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffF7F7F7)),
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
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 50,
              color: Colors.amber,
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
              height: 120,
              color: Colors.black,
              child:  Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10),
                      //   child: Text('WEEK GOAL',style: GoogleFonts.aDLaMDisplay(fontSize: 16),),
                      // ),
                      CalendarTimeline(
                        showYears: false,
                        shrink: false,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now().subtract(const Duration(days: 0)),
                        lastDate: DateTime.now().add(const Duration(days: 7)),
                        onDateSelected: (date) =>
                            setState(() => _selectedDate = date),
                        leftMargin: 20,
                        monthColor: Colors.transparent,
                        dayColor: Theme.of(context).colorScheme.primary,
                        dayNameColor: const Color(0xFF333A47),
                        activeDayColor: Colors.white,
                        activeBackgroundDayColor: Colors.amber,
                        dotsColor: const Color(0xFF333A47),
                       // selectableDayPredicate: (date) => date.day != 23,
                        locale: 'in',
                      ),
                    ],
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFFFFFF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 225,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/img/スクリーンショット 2022-06-08 11.42 1.png'))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, top: 180, right: 250),
                      child: Container(
                        width: 74,
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
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 40,
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
                    padding: const EdgeInsets.only(left: 20, top: 5),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFFFFFF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 225,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/img/スクリーンショット 2022-06-08 11.42 1.jpg'))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, top: 180, right: 250),
                      child: Container(
                        width: 74,
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
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 40,
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
                    padding: const EdgeInsets.only(left: 20, top: 5),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
            )
          ],
        ),
      ),
    );
  }
}
