import 'package:flut_app/constants.dart';
import 'package:flut_app/utils/app_text.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ResponButton extends StatelessWidget {
  ResponButton({Key? key, this.width = 120, this.isRespon = false})
      : super(key: key);

  bool? isRespon;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 50,
        width: isRespon == true ? double.maxFinite : width,
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
            isRespon == true
                ? Container(
                    margin: const EdgeInsets.only(left: 20, top: 14),
                    child: AppText(
                      text: "Book Trip Now",
                      color: Colors.white,
                    ),
                  )
                : Container(),
            Image.asset(
              "img/button-one.png",
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
