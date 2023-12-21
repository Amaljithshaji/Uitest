import 'package:flutter/material.dart';

class Texter extends StatelessWidget {
  const Texter({
    super.key,required this.text
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: Color.fromARGB(255, 216, 214, 214), width: 2)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
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
          ),
        ),
      ),
    );
  }
}