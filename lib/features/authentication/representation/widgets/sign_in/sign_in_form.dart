import 'package:education_app/features/authentication/representation/widgets/sign_in/check_box_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:education_app/core/router/routers.dart';
import 'package:education_app/core/widgets/next_button.dart';
import 'package:education_app/core/constants/app_sized_box.dart';
import 'package:education_app/features/authentication/representation/widgets/custom_text_field.dart';
class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final FocusNode emailNode = FocusNode();
  final FocusNode passwordNode = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailNode.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  bool _isValidEmail(String? email) {
    if (email == null || email.isEmpty) return false;
    final emailRegex =
    RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  bool _isValidPassword(String? password) {
    return password != null && password.length >= 6;
  }

  void _onSignUpPressed() {
    if (formKey.currentState!.validate()) {
      GoRouter.of(context).push(Routers.HomeScreen.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          _buildEmailField(),
          AppSizedBox.sizeH5,
          _buildPasswordField(),
          AppSizedBox.sizeH5,
          _buildCheckbox(),
          AppSizedBox.sizeH40,
          _buildSignUpButton(),
        ],
      ),
    );
  }

  Widget _buildEmailField() {
    return CustomTextField(
      controller: emailController,
      label: "Email",
      prefixIcon: Icons.email,
      keyboardType: TextInputType.emailAddress,
      focusNode: emailNode,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your email";
        }
        if (!_isValidEmail(value)) {
          return "Please enter a valid email";
        }
        return null;
      },
    );
  }

  Widget _buildPasswordField() {
    return CustomTextField(
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
    );
  }

  Widget _buildCheckbox() {
    return const CheckBoxIn();
  }

  Widget _buildSignUpButton() {
    return NextButton(
      title: "Sign In",
      buttonWidth: 350.w,
      onPressed: _onSignUpPressed,
    );
  }
}
