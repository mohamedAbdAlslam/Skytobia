import 'package:Skytopia/features/authentication/change_password/widget_text/text_top_page.dart';
import 'package:flutter/material.dart';
import '../../../core/generic_widgets/main_button.dart';
import '../../../core/generic_widgets/text_form_field.dart';
import '../../../core/theme/app_colors.dart';
import '../sign_widget/login_with.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  TextEditingController forgetPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(backgroundColor: AppColors.backGround,
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextTopPage(text: 'forget password ?'),
              const SizedBox(height: 1,),
              MyTextFormField(
                labelText: 'enter your email address',
                myHintText: 'Email Address',
                isSign: false,
              ),
              Column(
                children: [

                  MainButton(
                      text: 'send code',
                      onPressed: () {
                      Navigator.pushNamed(context, "verification_password");
                      }, isSign: false,),
                  const SizedBox(height: 25,),
                  LoginWith(color: false),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
