import 'package:education_app/core/constants/app_padding.dart';
import 'package:education_app/core/constants/app_size.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_text_field.dart';


class NewPasswordBody extends StatefulWidget {
  const NewPasswordBody({super.key});

  @override
  State<NewPasswordBody> createState() => _NewPasswordBodyState();
}

class _NewPasswordBodyState extends State<NewPasswordBody> {
  final TextEditingController passwordConfirmController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  final FocusNode passwordNode = FocusNode();

  bool _isValidPassword(String? password) {
    return password != null && password.length >= 6;
  }

  @override
  void dispose() {
    passwordConfirmController.dispose();
    passwordController.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forget Password "),),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Image.asset("assets/images/Cool Kids Staying Home.png",width: AppSize.imageWidth,height: 250.h,),
            AppSizedBox.sizeH40,
        CustomTextField(
          controller: passwordController,
          label: "Password",
          isPassword: true,
          focusNode: passwordNode,
          keyboardType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter a password";
            }
            if (!_isValidPassword(value)) {
              return "Password must be at least 6 characters";
            }
            return null;
          },
        ),

            AppSizedBox.sizeH20,
            CustomTextField(
              controller: passwordConfirmController,
              label: "Password",
              isPassword: true,
              focusNode: passwordNode,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a password";
                }
                if (!_isValidPassword(value)) {
                  return "Password must be at least 6 characters";
                }
                return null;
              },
            ),


          ],
        ),
      ),
    );
  }
}
