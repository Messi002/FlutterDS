// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flut_app/constants.dart';
import 'package:flut_app/utils/app_button.dart';
import 'package:flut_app/utils/app_large_text.dart';
import 'package:flut_app/utils/app_text.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int? selectedIndex;
  int? starIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: 350,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('img/mountain.jpeg'),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                left: 20,
                height: 70,
                child: Row(
                  children: [
                    const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.menu,
                          color: Color.fromARGB(255, 230, 224, 224),
                        ))
                  ],
                )),
            Positioned(
                top: 250,
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 250, 247, 247),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "Yosemite"),
                          AppLargeText(
                            text: "\$ 250",
                            color: AppColors.mainColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: AppColors.mainColor),
                          AppText(
                              text: "USA, California",
                              color: AppColors.textColor1),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(Icons.star,
                                  color: index < 4
                                      ? AppColors.starColor
                                      : AppColors.textColor1);
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: "(4.0)",
                            color: AppColors.textColor1,
                          )
                        ],
                      ),
                      SizedBox(height: 25),
                      AppLargeText(
                          text: 'People',
                          color: Colors.black.withOpacity(0.8),
                          size: 20),
                      SizedBox(height: 3),
                      AppText(
                        text: 'Number of people in your group',
                        color: AppColors.mainTextColor,
                        size: 13,
                      ),
                      SizedBox(height: 10),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 7),
                              child: AppButton(
                                  widget: AppText(
                                    text: (index + 1).toString(),
                                    color: selectedIndex == index
                                        ? Colors.white
                                        : Colors.black.withOpacity(0.8),
                                  ),
                                  color: Colors.black,
                                  bordercolor: AppColors.buttonBackground,
                                  bgcolor: selectedIndex == index
                                      ? Color.fromARGB(239, 7, 7, 7)
                                      : AppColors.buttonBackground,
                                  size: 45),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 20),
                      AppLargeText(
                        text: 'Description',
                        size: 20,
                        color: Colors.black.withOpacity(0.8),
                      ),
                      SizedBox(height: 6),
                      AppText(
                          text:
                              "You must go for a travel. Travelling helps geeeet rid of pressure. Go to the mountains to see the nature.",
                          color: AppColors.mainTextColor),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Row(
                            children: [
                                AppButton(color: AppColors.textColor1, bordercolor: AppColors.textColor1, bgcolor: Colors.white)
                            ],
                          )),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
