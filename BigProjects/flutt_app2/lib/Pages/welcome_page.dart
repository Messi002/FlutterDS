// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flut_app/constants.dart';
import 'package:flut_app/cubit/app_cubits.dart';
import 'package:flut_app/utils/app_large_text.dart';
import 'package:flut_app/utils/app_text.dart';
import 'package:flut_app/utils/responsive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

    List<String> text1 = ["Feel...", "Explore...", "Experience..."];
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: text[index]),
                        AppText(
                          text: text1[index],
                          size: 25,
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
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AppCubit>(context).getData();
                          },
                          child: ResponButton(
                            width: 120,
                          ),
                        ),
                      ],
                    ),
                    //column for dots
                    Column(
                      children: List.generate(3, (indexSlider) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          height: index == indexSlider ? 20 : 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: index == indexSlider
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
