// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flut_app/constants.dart';
import 'package:flut_app/utils/app_large_text.dart';
import 'package:flut_app/utils/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 5, left: 15),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black54,
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.4)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Discover"),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator:
                      CircleTabIndicator(color: AppColors.mainColor, radius: 4),
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      text: "Places",
                    ),
                    Tab(
                      text: "Inspiration",
                    ),
                    Tab(
                      text: "Emotions",
                    ),
                  ]),
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            // ignore: prefer_const_literals_to_create_immutables
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 10, right: 15),
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('img/mountain.jpeg'), fit: BoxFit.cover)),
                  );
                },
              ),
              Text("data1"),
              Text("data2"),
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(
                  text: "Explore more",
                  size: 15,
                ),
                AppText(
                  text: "See all",
                  color: AppColors.textColor1,
                  size: 13,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            width: double.maxFinite,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      Container(
                    margin: const EdgeInsets.only( right: 40),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('img/mountain.jpeg'), fit: BoxFit.cover)),
                  )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirlePainter(color: color, radius: radius);
  }
}

class _CirlePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirlePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
      configuration.size!.width / 2 - radius / 2,
      configuration.size!.height - radius - 3.5,
    );

    canvas.drawCircle(offset + circleOffset, radius, paint);
  }
}
