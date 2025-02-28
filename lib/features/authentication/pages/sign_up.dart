import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/generic_widgets/main_button.dart';
import '../../../core/generic_widgets/text_form_field.dart';
import '../../../core/theme/app_colors.dart';
import '../sign_widget/login_with.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key, required this.isSignUp});

  final GlobalKey<FormState> formState = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isSignUp;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isSignUp,
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: AppColors.borderContainer),
                ),
                height: 550,
                width: double.infinity,
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20,
                      sigmaY: 20,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 550,
                      width: 390,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Form(
              key: formState,
              autovalidateMode: AutovalidateMode.onUserInteraction, // عرض الأخطاء عند الكتابة
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),

                  /// 🔹 **حقل الاسم**
                  MyTextFormField(
                    controller: nameController,
                    myHintText: 'Name',
                    labelText: 'Enter your name',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name cannot be empty';
                      }
                      if (value.length < 3) {
                        return 'Name must be at least 3 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),

                  /// 🔹 **حقل البريد الإلكتروني**
                  MyTextFormField(
                    controller: emailController,
                    labelText: 'Enter your email address',
                    myHintText: 'Email Address',
                    isHasText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email cannot be empty';
                      }
                      final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                      if (!emailRegex.hasMatch(value)) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),

                  MyTextFormField(
                    controller: passwordController,
                    labelText: 'Enter password',
                    myHintText: 'Password',
                    hasSuffixIcon: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password cannot be empty';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  MainButton(
                    isSign: true,
                    text: 'Sign Up',
                    onPressed: () {
                      if (formState.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Sign Up Successful')),
                        );
                      }
                    },
                  ),

                  const SizedBox(height: 25),
                  LoginWith(color: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
