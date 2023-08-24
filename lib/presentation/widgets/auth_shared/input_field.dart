import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/AppAssets.dart';
import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';

class InputField extends StatefulWidget {
  TextEditingController? controller;
  TextInputType? keyboardType;
  TextDirection? textDirection;
  String? Function(String?)? validator;
  String? hintText;
  String? prefixIcon;
  bool obscureText=false;
  bool? readOnly;
  bool isShown = false;
  Widget? suffix;
  int maxLines=1;

  InputField(
      {this.keyboardType,
      this.textDirection,
      this.validator,
        this.maxLines=1,
      this.hintText,
      this.prefixIcon,
      this.obscureText=false,
      this.controller,
      this.suffix,
      this.readOnly});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    widget.isShown = widget.obscureText;
    return TextFormField(
      readOnly: widget.readOnly ?? false,
      obscureText: widget.obscureText ,
      controller: widget.controller,
      maxLines: widget.maxLines,
      keyboardType: widget.keyboardType,
      style: AppTextStyle.bodyWhiteFontWith16,
      textDirection: widget.textDirection ?? TextDirection.ltr,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppTextStyle.inputFieldTextStyle,

        prefixIcon:widget.prefixIcon!=null? Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10 * SizeConfig.horizontalBlock,
            vertical: 10 * SizeConfig.horizontalBlock,
          ),
          child: SvgPicture.asset(
            widget.prefixIcon!,
            height: 25 * SizeConfig.verticalBlock,
            width: 25 * SizeConfig.horizontalBlock,
          ),
        ):null,
        suffixIcon: widget.suffix??null,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10 * SizeConfig.horizontalBlock),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10 * SizeConfig.horizontalBlock,
          vertical: 11 * SizeConfig.verticalBlock,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10 * SizeConfig.horizontalBlock),
          borderSide: BorderSide(
            color: Colors.white,
            width: 3,
          ),
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
