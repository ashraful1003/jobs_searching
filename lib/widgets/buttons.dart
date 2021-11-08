import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  VoidCallback? onTapp;
  double? height, size;
  Color? borderColor, color, textColor, iconColor;
  String? data;
  dynamic iconData, weight;

  Buttons(
      {this.onTapp,
      this.data,
      this.height,
      this.size,
      this.borderColor,
      this.textColor,
      this.iconColor,
      this.iconData,
      this.weight,
      this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTapp;
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
        height: height ?? 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border:
              Border.all(color: borderColor ?? Colors.transparent, width: 2.0),
          color: color ?? Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: iconData != null
                  ? Icon(
                      iconData,
                      color: iconColor ?? Colors.white,
                    )
                  : const Icon(null),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "${data}",
                style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: size ?? 14,
                    fontWeight: weight ?? FontWeight.normal),
              ),
            )
          ],
        ),
      ),
    );
  }
}
