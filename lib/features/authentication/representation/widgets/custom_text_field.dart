import 'package:education_app/core/constants/app_color.dart';
import 'package:education_app/core/constants/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String? label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final bool autoFocus;
  final FocusNode focusNode;
  final bool readOnly;

  const CustomTextField({
    Key? key,
    this.label,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.autoFocus = false,
    this.readOnly = false, required this.focusNode,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hasError = true;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding8,
      child: TextFormField(
        focusNode: widget.focusNode,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPassword ? _obscureText : false,
        validator: widget.validator,
        onChanged: widget.onChanged,
        autofocus: widget.autoFocus,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
          labelText: widget.label,
          filled: true,
          fillColor: AppColor.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide.none,
          ),
          prefixIcon: widget.prefixIcon != null
              ? Icon(widget.prefixIcon, color: AppColor.titleOnboarding)
              : null,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : (widget.suffixIcon != null ? Icon(widget.suffixIcon) : null),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(
                color: hasError ? Colors.red : Colors.blueAccent, width: 1.w),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(color: Colors.red, width: 1.w),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(color: Colors.blueAccent, width: 1.w),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        ),
      ),
    );
  }
}
