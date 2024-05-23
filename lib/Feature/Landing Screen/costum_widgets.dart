import 'package:crypter/Core/Common%20SizedBoxes/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostumText extends StatelessWidget {
  CostumText({
    required this.text,
    Key? key,
  }) : super(key: key);
  String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
        fontSize: 47,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class smallCostumText extends StatelessWidget {
  smallCostumText({
    required this.text,
    Key? key,
  }) : super(key: key);

  String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class CostumContainer extends StatelessWidget {
  CostumContainer({
    required this.width,
    required this.color,
    Key? key,
  }) : super(key: key);

  double? width;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: width!,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color!,
      ),
    );
  }
}

class costum_button extends StatelessWidget {
  costum_button({
    required this.text,
    required this.btnColor,
    required this.textColor,
    required this.onpressed,
    this.icon,
    Key? key,
  }) : super(key: key);

  String text;
  Color textColor;
  Color btnColor;
  IconData? icon;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15.sm,
      color: btnColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          15.sm,
        ),
        side: BorderSide(
          color: Colors.blue.withOpacity(0.8),
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      child: MaterialButton(
        height: 40.h,
        minWidth: 300.w,
        textColor: textColor,
        disabledTextColor: Colors.black,
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        onPressed: onpressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            fixwidth2,
            Text(
              text,
              style: TextStyle(
                fontSize: 20.sm,
                fontWeight: FontWeight.bold,
              ),
            ),
            fixwidth2,
          ],
        ),
      ),
    );
  }
}
