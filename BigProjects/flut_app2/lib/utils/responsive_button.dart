import 'package:flut_app/constants.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ResponButton extends StatelessWidget {
  ResponButton({Key? key, this.width, this.isRespon = false}) : super(key: key);

  bool? isRespon;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.mainTextColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            "img/button-one.png",
            fit: BoxFit.fitWidth,
            width: width,
          ),
        ],
      ),
    );
  }
}
