import 'package:flutter/material.dart';
import 'package:solar_app/main.dart';

class InkContainer extends StatelessWidget {
  const InkContainer({
    super.key,
    this.width,
    this.height,
    this.onTap,
    this.child,
    this.margin = EdgeInsets.zero,
    this.padding = const EdgeInsets.all(15),
    this.color,
    this.borderRadius = const BorderRadius.all(Radius.circular(15)),
    this.elevation,
  });

  final Function()? onTap;
  final Widget? child;
  final EdgeInsets margin, padding;
  final Color? color;
  final BorderRadius? borderRadius;
  final double? elevation, width, height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Material(
        elevation: 3,
        color: primaryColor,
        borderRadius: borderRadius,
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: borderRadius!,
          ),
          onTap: onTap,
          child: Ink(
            width: width,
            height: height,
            padding: padding,
            decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadius,
              border:
                  Border.all(color: const Color.fromARGB(144, 158, 158, 158)),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
