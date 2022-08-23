import 'package:flut_app/constants.dart';
import 'package:flut_app/utils/app_text.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ResponButton extends StatelessWidget {
  ResponButton({Key? key, this.width, this.isRespon = false}) : super(key: key);

  bool? isRespon;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: isRespon == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           isRespon == true? AppText(text: "Book Trip Now", color: Colors.white) : Container(),
            Image.asset(
              "img/button-one.png",
            ),
          ],
        ),
      ),
    );
  }
}
