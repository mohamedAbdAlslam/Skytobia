import 'package:Skytopia/features/authentication/change_password/widget_text/text_top_page.dart';
import 'package:flutter/material.dart';
import '../../../core/generic_widgets/main_button.dart';
import '../../../core/generic_widgets/text_form_field.dart';
import '../../../core/theme/app_colors.dart';

class EnterNewPassword extends StatelessWidget {
  EnterNewPassword({super.key});
  TextEditingController passwordAddressController = TextEditingController();
  TextEditingController confirmPasswordAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGround,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),

                  TextTopPage(text: "Enter New Password"),
                  const SizedBox(height: 40),
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  const Column(
                    children: [
                       MyTextFormField(
                        labelText: 'Password',
                        isSign: false,
                        myHintText: 'Password',
                        hasSuffixIcon: true,
                      ),
                       SizedBox(height: 25),
                      MyTextFormField(
                        labelText: 'Confirm Password',
                        isSign: false,
                        myHintText: 'Confirm Password',
                        hasSuffixIcon: true,
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  MainButton(
                    text: 'Enter code',
                    onPressed: () {
                      Navigator.pushNamed(context, "home_page");
                    },
                    isSign: false,
                  ),

                  const SizedBox(height: 220),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
