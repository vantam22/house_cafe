import 'package:flutter/material.dart';

class AppTextFiled extends StatelessWidget {
  AppTextFiled({
    super.key,
    this.controller,
    this.onChanged,
    Color? bgcolor,
    this.hintText,
    this.hintColor = Colors.grey,
    BorderRadiusGeometry? borderRadius,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
    this.textInputAction,
  })  : bgColor = bgcolor ?? Colors.grey.withOpacity(0.36),
        borderRadius = borderRadius ?? BorderRadius.circular(10.0);

  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Color bgColor;
  final String? hintText;
  final Color hintColor;
  final BorderRadiusGeometry borderRadius;
  final EdgeInsetsGeometry padding;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: borderRadius,
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor),
        ),
        textInputAction: textInputAction,
      ),
    );
  }
}
