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
      height: 50,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.mainTextColor,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage(assetName))
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            "img/button-one.png",
            fit: BoxFit.fill,
            // width: width,
          ),
        ],
      ),
    );
  }
}
