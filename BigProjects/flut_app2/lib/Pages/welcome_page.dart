// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flut_app/constants.dart';
import 'package:flut_app/utils/app_large_text.dart';
import 'package:flut_app/utils/app_text.dart';
import 'package:flut_app/utils/responsive_button.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "welcome-one.png",
      "welcome-two.png",
      "welcome-three.png"
    ];

    List<String> text = ["Trips", "Mountains", "OverView"];

    List<String> text1 = ["Feel", "Explore", "Experience"];
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('img/${images[index]}')),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: text[index]),
                        AppText(
                          text: text1[index],
                          size: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                "Mountain hikes give you an incredible sense of freedom",
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ResponButton(
                          width: 150,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
